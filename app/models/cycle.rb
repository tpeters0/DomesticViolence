class Cycle < ActiveRecord::Base
  has_many :stages
  has_many :roles
end
