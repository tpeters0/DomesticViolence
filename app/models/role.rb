class Role < ActiveRecord::Base
  has_many   :behaviors
  has_many   :attitudes
end
