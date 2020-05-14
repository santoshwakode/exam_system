json.extract! student, :id, :name, :teacher_id, :subject_id, :fees, :created_at, :updated_at
json.url student_url(student, format: :json)
