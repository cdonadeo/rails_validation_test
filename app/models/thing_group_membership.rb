class ThingGroupMembership < ActiveRecord::Base
  belongs_to :thing
  belongs_to :group

  # This validation should always fail
  validates_presence_of :some_data
end