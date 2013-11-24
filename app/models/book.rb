class Book < ActiveRecord::Base
	acts_as :product, :as => :producible
end
