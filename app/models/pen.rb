class Pen < ActiveRecord::Base
	acts_as :product, :as => :producible
end
