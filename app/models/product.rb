class Product < ActiveRecord::Base

	 acts_as_superclass
	 belongs_to :store
<<<<<<< HEAD
	 has_one :book
	 accepts_nested_attributes_for :book, :allow_destroy => true, :reject_if => :all_blank

=======
>>>>>>> 548aadee0aaaa675e0c679678293fb472734eedd
end
