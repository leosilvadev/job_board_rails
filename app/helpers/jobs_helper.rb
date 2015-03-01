module JobsHelper
  def job_title(job)
    title = raw(" #{h(job.title)} - #{h(job.company.name)}")

    title = content_tag(:i, ' ', class: 'glyphicon glyphicon-star') + title if job.premium
    
    title
  end
end
