class Article < ApplicationRecord
  scope :published, -> { where(checkbox: true) }
	validates :name, :presence => true
  validates :description, :presence => true,
  length:{minimum: 5}
  validates :category, :presence => true
  mount_uploader :attachment, AttachmentUploader
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
