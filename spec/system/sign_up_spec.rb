require "rails_helper"

RSpec.describe "Sign Up" do
  before do
    visit new_user_registration_path
  end

  context "when entering a valid username, email, and password" do
    it "signs up successfully" do
      fill_in "Username", with: "Josh"
      fill_in "Email", with: "josh@example.com"
      fill_in "Password", with: "example_password"
      fill_in "Password confirmation", with: "example_password"
      click_on "Sign up"

      expect(page).to have_content("Meals")
    end
  end

  context "when entering an invalid username" do
    it "fails to sign up and displays error for username" do
      fill_in "Username", with: "J"
      fill_in "Email", with: "josh@example.com"
      fill_in "Password", with: "example_password"
      fill_in "Password confirmation", with: "example_password"
      click_on "Sign up"

      expect(page).to have_content("Username is too short")
    end
  end
end
