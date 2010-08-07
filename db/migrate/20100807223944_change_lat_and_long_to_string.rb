class ChangeLatAndLongToString < ActiveRecord::Migration
  def self.up
    remove_column :communities, :latitude
    remove_column :communities, :longitude
    add_column :communities, :latitude, :string
    add_column :communities, :longitude, :string
  end

  def self.down
    remove_column :communities, :latitude
    remove_column :communities, :longitude
    add_column :communities, :latitude, :decimal
    add_column :communities, :longitude, :decimal
  end
end
