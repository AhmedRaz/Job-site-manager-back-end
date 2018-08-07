class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :telephone
      t.integer :company_id
      t.string :profile_pic_src
      t.string :password_digest
      t.integer :user_level

      t.timestamps
    end
  end
end
