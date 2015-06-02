class Cycle < ActiveRecord::Base
  has_many :stages, :roles
end
