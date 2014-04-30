	class Product < ActiveRecord::Base

	 acts_as_superclass
	 belongs_to :store
	 # has_one :book
	 # accepts_nested_attributes_for :book, :allow_destroy => true, :reject_if => :all_blank

end
