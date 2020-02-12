json.extract! meeting, :id, :date, :venue, :group_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
