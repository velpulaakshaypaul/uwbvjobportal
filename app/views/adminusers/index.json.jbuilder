json.array!(@adminusers) do |adminuser|
  json.extract! adminuser, :id, :firstname, :lastname, :email, :contact, :password, :passwordconfirmation
  json.url adminuser_url(adminuser, format: :json)
end
