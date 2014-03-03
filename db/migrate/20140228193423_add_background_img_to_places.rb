class AddBackgroundImgToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :background_img, :string
  end
end
