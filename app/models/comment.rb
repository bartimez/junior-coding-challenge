class Comment < ApplicationRecord
  # article:references command generated this relationship between `Comment` and `Post`
  belongs_to :post
end
