json.array!(@students) do |student|
  json.extract! student, :id, :course_id, :batch_id, :name, :roll_no, :gender, :school, :phone_1, :phone_2, :date_of_birth
  json.url student_url(student, format: :json)
end
