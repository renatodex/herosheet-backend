class CreateTeamHeroPowers < ActiveRecord::Migration
  def change
    create_table :team_hero_powers do |t|
      t.references :TeamHero
      t.string :power_name
      t.string :power_value

      t.timestamps
    end
    add_index :team_hero_powers, :TeamHero_id
  end
end
