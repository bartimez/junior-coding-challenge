class Comment < ApplicationRecord
  # first half of the `Post`/`Comment` one-to-many relationship
  belongs_to :post
end
