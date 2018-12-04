class Article < ApplicationRecord
	validates :name, :presence => true
    
    validates :description, :presence => true,
    	length:{minimum: 5}
    		
    		validates :category, :presence => true
    			
    			validates :checkbox, :presence => true

    				belongs_to :author
            belongs_to :category
end
