class AddColumnForUploader < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile, :string
    add_column :pictures, :image, :string
  end
end
