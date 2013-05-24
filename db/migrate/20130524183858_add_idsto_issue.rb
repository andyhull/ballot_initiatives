class AddIdstoIssue < ActiveRecord::Migration
  def up
  	add_column :issues, :initiative_id, :integer
  end

  def down
  end
end
