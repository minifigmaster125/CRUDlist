class Project < ActiveRecord::Base
  belongs_to :user
  has_many :models
  validates :title, presence: true

  def to_param
    "#{id}-CRUDlist"
  end

end
