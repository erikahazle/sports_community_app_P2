class RemoveLatitudeAndLongitudeFromPostsAndAddLatitudeAndLongitudeToCommunities < ActiveRecord::Migration
  def change
    remove_column :posts, :latitude, :float
    remove_column :posts, :longitude, :float
    add_column :communities, :latitude, :float
    add_column :communities, :longitude, :float
  end
end
