class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.integer :job_id
      t.boolean :resolved, default: false
      t.text :event_details
      t.string :event_type
      t.string :event_struct

      t.timestamps
    end
  end
end
