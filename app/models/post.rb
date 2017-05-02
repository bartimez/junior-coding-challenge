class Post < ApplicationRecord
  # second half of the `Post`/`Comment` one-to-many relationship
  has_many :comments, dependent: :destroy

  # build the search method for our search posts form
  def self.search(search)
    where('title || body LIKE ?', "%#{search}%")
  end

end
