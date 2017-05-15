class Group < ActiveRecord::Base
  has_many :thing_group_memberships
  has_many :things, through: :thing_group_memberships
end