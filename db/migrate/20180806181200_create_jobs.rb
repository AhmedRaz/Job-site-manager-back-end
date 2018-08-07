class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :location_id
      t.integer :company_id
      

      t.timestamps
    end
  end
end
