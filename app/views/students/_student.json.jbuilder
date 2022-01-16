json.extract! student, :id, :first_name, :last_name, :age, :roll_no, :email, :address, :mobile, :image, :created_at, :updated_at
json.url student_url(student, format: :json)
