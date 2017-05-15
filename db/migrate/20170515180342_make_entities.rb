class MakeEntities < ActiveRecord::Migration
  def change
    create_table :things
    create_table :groups

    # This is the join table
    create_table :thing_group_memberships do |t|
      t.belongs_to :thing, null: false
      t.belongs_to :group, null: false
      t.string :some_data
    end
  end
end
