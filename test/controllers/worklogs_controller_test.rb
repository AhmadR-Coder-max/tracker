require 'test_helper'

class WorklogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worklog = worklogs(:one)
  end

  test 'should get index' do
    get worklogs_url
    assert_response :success
  end

  test 'should get new' do
    get new_worklog_url
    assert_response :success
  end

  test 'should create worklog' do
    assert_difference('Worklog.count') do
      post worklogs_url,
           params: { worklog: { description: @worklog.description, minutes_worked: @worklog.minutes_worked } }
    end

    assert_redirected_to worklog_url(Worklog.last)
  end

  test 'should show worklog' do
    get worklog_url(@worklog)
    assert_response :success
  end

  test 'should get edit' do
    get edit_worklog_url(@worklog)
    assert_response :success
  end

  test 'should update worklog' do
    patch worklog_url(@worklog),
          params: { worklog: { description: @worklog.description, minutes_worked: @worklog.minutes_worked } }
    assert_redirected_to worklog_url(@worklog)
  end

  test 'should destroy worklog' do
    assert_difference('Worklog.count', -1) do
      delete worklog_url(@worklog)
    end

    assert_redirected_to worklogs_url
  end
end
