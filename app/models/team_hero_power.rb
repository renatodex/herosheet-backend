class TeamHeroPower < ActiveRecord::Base
  belongs_to :TeamHero
  attr_accessible :power_name, :power_value
end
