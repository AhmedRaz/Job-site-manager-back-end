class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email_address
      t.string :designation
      t.string :telephone
      t.string :website
      t.string :logo_src

      t.timestamps
    end
  end
end
