class Category < ActiveRecord::Base
  has_many :articles, dependent: :destroy, inverse_of: :category
end
