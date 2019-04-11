require 'rails_helper'

RSpec.feature "User Signup", :type => :feature do
  scenario "User sings up" do
    visit "/users/sign_up"

    fill_in "Email", :with => "rspec@test.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Sign up"
    expect(page).to have_content("Welcome")
  end
end
  