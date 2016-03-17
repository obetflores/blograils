json.array!(@meets) do |meet|
  json.extract! meet, :id, :name, :meeting, :subject, :status
  json.url meet_url(meet, format: :json)
end
