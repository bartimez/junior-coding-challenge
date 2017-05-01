class Post < ApplicationRecord
  # wire the other half of the post/comment relationship
  has_many :comments

  def self.search(search)
    where("title || body LIKE ?", "%#{search}%")
  end

end
