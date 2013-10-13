class ApiController < ApplicationController
  def list_team_heroes
    team = Team.find(params[:team_id])
    team_heroes = TeamHero.find(:all).order("created_at ASC")
    render :json => {
      :team => {
        :nome => team.name,
        :id => team.id,
        :herois => team_heroes
      }
    }
  end

  def update_hero_sheet
    team_hero = TeamHero.update(params[:hero_id], {
       :action_points => params[:action_points],
       :actual_healing_surges => params[:actual_healing_surges],
       :total_healing_surges => params[:total_healing_surges],
       :actual_hit_points => params[:actual_hit_points],
       :total_hit_points => params[:total_hit_points],
       :temporary_hit_points => params[:temporary_hit_points],       
       :name => params[:name]
    })
    
    render :json => {}
  end

  def update_hero_hit_points
  end

  def update_hero_healing_surges
  end

  def update_hero_temporary_hit_points
  end

  def update_hero_action_points
  end
end
