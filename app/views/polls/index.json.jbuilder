json.array!(@polls) do |poll|
  json.extract! poll, :id, :question_id, :name, :poll_number
  json.url poll_url(poll, format: :json)
end
