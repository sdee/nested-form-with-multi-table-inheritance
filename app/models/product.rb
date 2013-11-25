class Product < ActiveRecord::Base
	 acts_as_superclass
	 belongs_to :store
	 accepts_nested_attributes_for :ingredient, :allow_destroy => true, :reject_if => :all_blank
end
