class Book < ActiveRecord::Base
	 belongs_to :store
	 acts_as :product, :include => true
end
