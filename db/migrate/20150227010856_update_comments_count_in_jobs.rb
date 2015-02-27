class UpdateCommentsCountInJobs < ActiveRecord::Migration
  def change
    Job.find_each do |job|
      Job.reset_counters job.id, :comments
    end
  end
end
