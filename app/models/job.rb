class Job < ActiveRecord::Base
  belongs_to :company
  has_many :comments

  scope :most_recent, -> { order('created_at DESC') }
  validates_presence_of :description, :title, :company_id
  
  def to_param
    "#{id}-#{title}"
  end

  def self.find_by_slug(slug)
    job = find(slug)
    
    if (job.to_param == slug)
      job
    else
      raise SlugNotFoundError.new(job)
    end
  end
  
end
