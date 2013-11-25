class Store < ActiveRecord::Base
	has_many :products
	has_many :books, :through => :products
	accepts_nested_attributes_for :products, :allow_destroy => true, :reject_if => :all_blank
end
