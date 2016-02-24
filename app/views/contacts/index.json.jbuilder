json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :string, :email, :comment
  json.url contact_url(contact, format: :json)
end
