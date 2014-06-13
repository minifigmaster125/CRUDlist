class Project < ActiveRecord::Base
  belongs_to :user
  has_many :models
  validates :title, presence: true
end
