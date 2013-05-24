class ChangeTypetoInitiativeType < ActiveRecord::Migration
  def up
  	remove_column :initiatives, :type
  	add_column :initiatives, :initiativetype, :string
  end

  def down
  end
end
