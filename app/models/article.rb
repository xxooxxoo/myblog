class Article < ActiveRecord::Base
  belongs_to :category, inverse_of: :articles
end
