class AddUserIdColumnToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :user_id, :integer, optional: true
    add_column :events, :image_source, :string, array: true, default: []
  end

end
