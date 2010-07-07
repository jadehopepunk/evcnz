# create_table "communities", :force => true do |t|
#   t.string   "name"
#   t.string   "url"
#   t.text     "short_description"
#   t.text     "long_description"
#   t.datetime "created_at"
#   t.datetime "updated_at"
#   t.string   "photo_file_name"
#   t.string   "photo_content_type"
#   t.integer  "photo_file_size"
#   t.datetime "photo_updated_at"
# end

class Community < ActiveRecord::Base
  validates_presence_of :name, :url, :short_description
  
  has_attached_file :photo, :styles => {:thumb => "150x150#"}
  
  def domain
    URI.parse(url).host unless url.blank?
  end
end
