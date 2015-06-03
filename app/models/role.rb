class Role < ActiveRecord::Base
  belongs_to :cycle
  has_many   :behaviors, :attitudes
end
