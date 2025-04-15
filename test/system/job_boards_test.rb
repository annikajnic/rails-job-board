require "application_system_test_case"

class JobBoardsTest < ApplicationSystemTestCase
  setup do
    @job_board = job_boards(:one)
  end

  test "visiting the index" do
    visit job_boards_url
    assert_selector "h1", text: "Job boards"
  end

  test "should create job board" do
    visit job_boards_url
    click_on "New job board"

    check "Applied" if @job_board.applied
    fill_in "Company link", with: @job_board.company_link
    fill_in "Company name", with: @job_board.company_name
    fill_in "Date posted", with: @job_board.date_posted
    fill_in "Position", with: @job_board.position
    click_on "Create Job board"

    assert_text "Job board was successfully created"
    click_on "Back"
  end

  test "should update Job board" do
    visit job_board_url(@job_board)
    click_on "Edit this job board", match: :first

    check "Applied" if @job_board.applied
    fill_in "Company link", with: @job_board.company_link
    fill_in "Company name", with: @job_board.company_name
    fill_in "Date posted", with: @job_board.date_posted
    fill_in "Position", with: @job_board.position
    click_on "Update Job board"

    assert_text "Job board was successfully updated"
    click_on "Back"
  end

  test "should destroy Job board" do
    visit job_board_url(@job_board)
    click_on "Destroy this job board", match: :first

    assert_text "Job board was successfully destroyed"
  end
end
