class Article < ActiveRecord::Base
  belongs_to :category
  
  # Validations
  validates_presence_of :title
  validates_presence_of :content
  
  # Scopes
  scope :active, where('active = ?', true)
  scope :alphabetical, order('title')
  
  
  
end
