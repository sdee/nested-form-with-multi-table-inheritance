class Product < ActiveRecord::Base
	 acts_as_superclass
	 belongs_to :store
end
