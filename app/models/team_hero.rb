class TeamHero < ActiveRecord::Base
  belongs_to :Team
  attr_accessible :action_points, :actual_healing_surges, :actual_hit_points, :name, :temporary_hit_points, :total_healing_surges, :total_hit_points
end
