require "test_helper"

class JobBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_board = job_boards(:one)
  end

  test "should get index" do
    get job_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_job_board_url
    assert_response :success
  end

  test "should create job_board" do
    assert_difference("JobBoard.count") do
      post job_boards_url, params: { job_board: { applied: @job_board.applied, company_link: @job_board.company_link, company_name: @job_board.company_name, date_posted: @job_board.date_posted, position: @job_board.position } }
    end

    assert_redirected_to job_board_url(JobBoard.last)
  end

  test "should show job_board" do
    get job_board_url(@job_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_board_url(@job_board)
    assert_response :success
  end

  test "should update job_board" do
    patch job_board_url(@job_board), params: { job_board: { applied: @job_board.applied, company_link: @job_board.company_link, company_name: @job_board.company_name, date_posted: @job_board.date_posted, position: @job_board.position } }
    assert_redirected_to job_board_url(@job_board)
  end

  test "should destroy job_board" do
    assert_difference("JobBoard.count", -1) do
      delete job_board_url(@job_board)
    end

    assert_redirected_to job_boards_url
  end
end
