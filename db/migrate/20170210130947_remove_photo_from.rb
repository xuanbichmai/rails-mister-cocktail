class RemovePhotoFrom < ActiveRecord::Migration[5.0]
  def change
    remove_column :cocktails, :photo
  end
end
