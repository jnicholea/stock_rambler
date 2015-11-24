class User < ActiveRecord::Base
  has_many :photos, foreign_key: :photographer_id
end
