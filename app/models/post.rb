class Post < ApplicationRecord
  # wire the other half of the post/comment relationship
  has_many :comments
end
