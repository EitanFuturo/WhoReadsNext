json.extract! attendance, :id, :student_id, :meeting_id, :attended, :had_text, :read_text, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
