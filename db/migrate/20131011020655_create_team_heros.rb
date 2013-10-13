class CreateTeamHeros < ActiveRecord::Migration
  def change
    create_table :team_heros do |t|
      t.references :Team
      t.string :name
      t.integer :total_hit_points
      t.integer :total_healing_surges
      t.integer :actual_hit_points
      t.integer :actual_healing_surges
      t.integer :action_points
      t.integer :temporary_hit_points

      t.timestamps
    end
    add_index :team_heros, :Team_id
  end
end
