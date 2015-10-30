json.array!(@questions) do |question|
  json.extract! question, :id, :questions_list, :job_type
  json.url question_url(question, format: :json)
end
