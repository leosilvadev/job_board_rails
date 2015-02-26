json.array!(@jobs) do |job|
  json.extract! job, :id, :premium, :title, :description
  json.url job_url(job, format: :json)
  json.url job_comments_url(job.id, format: :json)
end
