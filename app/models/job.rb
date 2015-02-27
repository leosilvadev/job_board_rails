class Job < ActiveRecord::Base
  belongs_to :company
  has_many :comments

  scope :most_recent, -> { order('created_at DESC') }
  validates_presence_of :description, :title, :company_id
end
