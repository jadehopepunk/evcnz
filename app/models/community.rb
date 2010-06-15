# create_table "communities", :force => true do |t|
#   t.string   "name"
#   t.string   "url"
#   t.text     "short_description"
#   t.text     "long_description"
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end

class Community < ActiveRecord::Base
  validates_presence_of :name, :url, :short_description
end
