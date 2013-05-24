class CreateConsultantServices < ActiveRecord::Migration
  def change
    create_table :consultant_services do |t|
      t.integer :total_promised
      t.integer :total_received

      t.timestamps
    end
  end
end
