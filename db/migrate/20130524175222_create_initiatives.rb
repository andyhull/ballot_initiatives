class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.string :name
      t.text :description
      t.string :type
      t.string :status
      t.string :year
      t.integer :contributions
      t.integer :expenditures

      t.timestamps
    end
  end
end
