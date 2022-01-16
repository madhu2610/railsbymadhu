json.extract! student_profile, :id, :mark1, :mark2, :mark3, :total, :student_id, :created_at, :updated_at
json.url student_profile_url(student_profile, format: :json)
