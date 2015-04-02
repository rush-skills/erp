require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { batch_id: @student.batch_id, course_id: @student.course_id, date_of_birth: @student.date_of_birth, gender: @student.gender, name: @student.name, phone_1: @student.phone_1, phone_2: @student.phone_2, roll_no: @student.roll_no, school: @student.school }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { batch_id: @student.batch_id, course_id: @student.course_id, date_of_birth: @student.date_of_birth, gender: @student.gender, name: @student.name, phone_1: @student.phone_1, phone_2: @student.phone_2, roll_no: @student.roll_no, school: @student.school }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
