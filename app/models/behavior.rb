class Behavior < ActiveRecord::Base
  belongs_to :stage
  belongs_to :role
end
