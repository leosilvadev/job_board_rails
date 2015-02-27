module JobsHelper
  def job_title(job)
    title = raw("#{h(job.title)} - #{h(job.company.name)}")
    title = title + content_tag(:strong, ' (premium)') if job.premium

    title
  end
end
