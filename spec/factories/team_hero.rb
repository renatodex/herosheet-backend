require 'factory_girl'

FactoryGirl.define do
  factory :team_hero do
    id 1
    name 'Erin'
    action_points 1
    actual_healing_surges 4
    actual_hit_points 30
    temporary_hit_points 2
    total_healing_surges 10
    total_hit_points 45
  end
end