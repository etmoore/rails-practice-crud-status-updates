require 'rails_helper'

feature "Status Update" do
  scenario "user creates a status update" do
    visit root_path
    click_on "New Status Update"
    fill_in "User", with: "antonio"
    fill_in "Status", with: "scoring touchdowns"
    fill_in "Likes", with: "1000"
    click_on "Create Status update"

    expect(page).to have_content "antonio"
    expect(page).to have_content "scoring touchdowns"
    expect(page).to have_content "1000"
  end
end
