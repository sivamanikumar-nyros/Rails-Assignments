class Article < ApplicationRecord
	validates :name, :presence => true
    
    validates :description, :presence => true,
    length:{minimum: 5}
    		
    validates :category, :presence => true
    			
    validates :checkbox, :presence => true

    belongs_to :author
    
    belongs_to :category

    has_many :reviews

    after_create :create_action

    has_many :checkouts
    has_many :users , through: :checkouts

    
    def create_action

    	self.story = "Accepted"

    	self.save!
    end
    
end
