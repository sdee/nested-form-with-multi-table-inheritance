class Store < ActiveRecord::Base
	has_many :products, :dependent => :destroy
	has_many :books, :through => :products, :source => :as_product, :source_type => "Book"
	# has_many :books
	accepts_nested_attributes_for :products, :allow_destroy => true, :reject_if => :all_blank
	accepts_nested_attributes_for :books, :allow_destroy => true, :reject_if => :all_blank
end
