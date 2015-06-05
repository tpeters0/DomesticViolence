class Stage < ActiveRecord::Base
  belongs_to :cycle
  has_many   :behaviors
  has_many   :attitudes
end
