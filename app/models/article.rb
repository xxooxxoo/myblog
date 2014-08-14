class Article < ActiveRecord::Base
  belongs_to :category, inverse_of: :articles
  has_many :comments, inverse_of: :article
end
