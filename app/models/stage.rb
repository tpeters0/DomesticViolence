class Stage < ActiveRecord::Base
  has_many   :behaviors
  has_many   :attitudes
end
