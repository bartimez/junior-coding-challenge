class Post < ApplicationRecord
  # wire the other half of the post/comment relationship
  has_many :comments, dependent: :destroy

  # build the search method for our search posts form
  def self.search(search)
    where("title || body LIKE ?", "%#{search}%")
  end

end
