class Article < ApplicationRecord
	validates :name, :presence => true
  validates :description, :presence => true,
  length:{minimum: 5}
  validates :category, :presence => true
  validates :checkbox, :presence => true
  has_many :checkouts
  has_many :users , through: :checkouts
  belongs_to :author
  belongs_to :category
  
  after_create :create_action
    
    def create_action

    	self.story = "Accepted"

    	self.save!
    end
    
end
