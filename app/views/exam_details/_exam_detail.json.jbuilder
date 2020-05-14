json.extract! exam_detail, :id, :exam_id, :teacher_id, :student_id, :subject_id, :created_at, :updated_at
json.url exam_detail_url(exam_detail, format: :json)
