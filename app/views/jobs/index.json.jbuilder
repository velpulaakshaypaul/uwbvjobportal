json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :qualifications, :postedon, :deadline
  json.url job_url(job, format: :json)
end
