class AddProfileImgIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_img_id, :string
  end
end
