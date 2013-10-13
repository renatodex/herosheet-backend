require "spec_helper"

describe ApiController do
  
  let(:team) { FactoryGirl.build(:team) }
  let(:team_hero) { FactoryGirl.build(:team_hero) }
  let(:team_heroes) { FactoryGirl.build_list(:team_hero, 2) }
  
  describe "GET #list_team_heros" do
    it "responds successfully with an HTTP 200 status code" do
      Team.should_receive(:find).and_return(team)
      get :list_team_heroes
      expect(response).to be_success
    end
    
    it "should respond a valid json file" do
      Team.should_receive(:find).with("1").and_return(team)
      TeamHero.should_receive(:find).with(:all).and_return(team_heroes)
      get :list_team_heroes, :team_id => "1"
      
      response.body.should eq({
        :team => {
          :nome => team.name,
          :id => team.id,
          :herois => team_heroes
        }
      }.to_json)
    end
  end
  
  describe "GET #update_hero_sheet" do
    it "responds successfully with an HTTP 200 status code" do
      TeamHero.should_receive(:update).with("1", {
        :action_points => "1",
        :actual_healing_surges => "4",
        :total_healing_surges => "10",
        :actual_hit_points => "30",
        :total_hit_points => "45",
        :temporary_hit_points => "2",
        :name => 'Erin'        
      }).and_return(:team_hero)
      
      post :update_hero_sheet, name: 'Erin', hero_id: "1", action_points: "1", actual_healing_surges: "4", actual_hit_points: "30", temporary_hit_points: "2", total_healing_surges: "10", total_hit_points: "45" 
      expect(response).to be_success
    end
  end  
end