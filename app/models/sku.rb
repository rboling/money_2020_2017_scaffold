class Sku < ActiveRecord::Base
  has_and_belongs_to_many :purchases
end
