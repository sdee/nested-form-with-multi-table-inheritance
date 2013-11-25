class Pen < ActiveRecord::Base
	 acts_as :product, :as => :producible acts_as :product, :as => :producible
	 belongs_to :store

end
