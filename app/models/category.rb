class Category < ApplicationRecord
    belongs_to :searcher
    belongs_to :post
end
