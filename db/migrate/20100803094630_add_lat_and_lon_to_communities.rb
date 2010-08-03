class AddLatAndLonToCommunities < ActiveRecord::Migration
  def self.up
    add_column :communities, :latitude, :decimal
    add_column :communities, :longitude, :decimal
  end

  def self.down
    remove_column :communities, :latitude
    remove_column :communities, :longitude
  end
end
