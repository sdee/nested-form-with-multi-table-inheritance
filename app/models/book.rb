class Book < ActiveRecord::Base
	 belongs_to :store
	 acts_as :product, :as => :producible, :include => true
end
