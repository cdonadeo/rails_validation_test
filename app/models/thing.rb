class Thing < ActiveRecord::Base
  has_many :thing_group_memberships
  has_many :groups, through: :thing_group_memberships

  def to_s
    "Thing #{id}"
  end
end