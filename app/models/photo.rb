class Photo < ActiveRecord::Base
  belongs_to :photographer, class_name: "User"
end
