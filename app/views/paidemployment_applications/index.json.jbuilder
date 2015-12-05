json.array!(@paidemployment_applications) do |paidemployment_application|
  json.extract! paidemployment_application, :id, :applicant_id, :job_id, :application_id, :referral_source, :preferred_contact, :availability_date, :desired_salary, :transportation, :over_eighteen, :work_proof, :controlledsubstance_test, :a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8
  json.url paidemployment_application_url(paidemployment_application, format: :json)
end
