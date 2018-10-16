require "application_system_test_case"

class VisitorLogsTest < ApplicationSystemTestCase
  setup do
    @visitor_log = visitor_logs(:one)
  end

  test "visiting the index" do
    visit visitor_logs_url
    assert_selector "h1", text: "Visitor Logs"
  end

  test "creating a Visitor log" do
    visit visitor_logs_url
    click_on "New Visitor Log"

    fill_in "Location Name", with: @visitor_log.location_name
    fill_in "Private Notes", with: @visitor_log.private_notes
    fill_in "Purpose Of Visit", with: @visitor_log.purpose_of_visit
    fill_in "Your Email Address", with: @visitor_log.your_email_address
    fill_in "Your Full Name", with: @visitor_log.your_full_name
    click_on "Create Visitor log"

    assert_text "Visitor log was successfully created"
    click_on "Back"
  end

  test "updating a Visitor log" do
    visit visitor_logs_url
    click_on "Edit", match: :first

    fill_in "Location Name", with: @visitor_log.location_name
    fill_in "Private Notes", with: @visitor_log.private_notes
    fill_in "Purpose Of Visit", with: @visitor_log.purpose_of_visit
    fill_in "Your Email Address", with: @visitor_log.your_email_address
    fill_in "Your Full Name", with: @visitor_log.your_full_name
    click_on "Update Visitor log"

    assert_text "Visitor log was successfully updated"
    click_on "Back"
  end

  test "destroying a Visitor log" do
    visit visitor_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visitor log was successfully destroyed"
  end
end
