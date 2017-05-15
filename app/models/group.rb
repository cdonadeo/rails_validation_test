class Group < ActiveRecord::Base
  has_many :thing_group_memberships
  has_many :things, through: :thing_group_memberships

  def to_s
    "Group #{id}"
  end
end