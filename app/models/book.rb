class Book < ActiveRecord::Base
	 acts_as :product, :as => :producible
	 belongs_to :store
end
