require "application_system_test_case"

class WorklogsTest < ApplicationSystemTestCase
  setup do
    @worklog = worklogs(:one)
  end

  test "visiting the index" do
    visit worklogs_url
    assert_selector "h1", text: "Worklogs"
  end

  test "creating a Worklog" do
    visit worklogs_url
    click_on "New Worklog"

    fill_in "Description", with: @worklog.description
    fill_in "Mins worked", with: @worklog.mins_worked
    click_on "Create Worklog"

    assert_text "Worklog was successfully created"
    click_on "Back"
  end

  test "updating a Worklog" do
    visit worklogs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @worklog.description
    fill_in "Mins worked", with: @worklog.mins_worked
    click_on "Update Worklog"

    assert_text "Worklog was successfully updated"
    click_on "Back"
  end

  test "destroying a Worklog" do
    visit worklogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Worklog was successfully destroyed"
  end
end
