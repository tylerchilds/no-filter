class Relationship < ActiveRecord::Base
  belongs_to :stalker, class_name: "User"
  belongs_to :victim, class_name: "User"

  validates :stalker_id, presence: true
  validates :victim_id, presence: true
end
