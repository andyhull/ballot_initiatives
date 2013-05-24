class AddIdstoConsultingServiceTable < ActiveRecord::Migration
  def up
  	add_column :consultant_services, :initiative_id, :integer
  	add_column :consultant_services, :firm_id, :integer
  end

  def down
  end
end
