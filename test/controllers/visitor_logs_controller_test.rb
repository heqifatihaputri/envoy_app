require 'test_helper'

class VisitorLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitor_log = visitor_logs(:one)
  end

  test "should get index" do
    get visitor_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_visitor_log_url
    assert_response :success
  end

  test "should create visitor_log" do
    assert_difference('VisitorLog.count') do
      post visitor_logs_url, params: { visitor_log: { location_name: @visitor_log.location_name, private_notes: @visitor_log.private_notes, purpose_of_visit: @visitor_log.purpose_of_visit, your_email_address: @visitor_log.your_email_address, your_full_name: @visitor_log.your_full_name } }
    end

    assert_redirected_to visitor_log_url(VisitorLog.last)
  end

  test "should show visitor_log" do
    get visitor_log_url(@visitor_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitor_log_url(@visitor_log)
    assert_response :success
  end

  test "should update visitor_log" do
    patch visitor_log_url(@visitor_log), params: { visitor_log: { location_name: @visitor_log.location_name, private_notes: @visitor_log.private_notes, purpose_of_visit: @visitor_log.purpose_of_visit, your_email_address: @visitor_log.your_email_address, your_full_name: @visitor_log.your_full_name } }
    assert_redirected_to visitor_log_url(@visitor_log)
  end

  test "should destroy visitor_log" do
    assert_difference('VisitorLog.count', -1) do
      delete visitor_log_url(@visitor_log)
    end

    assert_redirected_to visitor_logs_url
  end
end
