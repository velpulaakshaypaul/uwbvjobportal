json.array!(@internship_applications) do |internship_application|
  json.extract! internship_application, :id, :job_id, :applicant_id, :answers_list
  json.url internship_application_url(internship_application, format: :json)
end
