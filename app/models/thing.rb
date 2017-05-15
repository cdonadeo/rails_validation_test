class Thing < ActiveRecord::Base
  has_many :thing_group_memberships
  has_many :groups, through: :thing_group_memberships
end