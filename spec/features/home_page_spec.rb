require 'rails_helper'

def home
  visit '/'
end

describe "Visiting index" do
  before do
    home
  end

  it "Visits a welcome page when visiting the index view and not logged in" do
    expect(page).to have_content('Register')
  end

  it "Takes the user to the register page when clicking Register" do
    click_link 'Register'
    expect(page).to have_content('Sign Up')
  end

  it "has a link if a user is already registered to sign in" do
    expect(page).to have_content('Already registered?')
  end

  it "takes user to login page when sin in link is clicked" do
    click_link 'Sign In'
    expect(page).to have_content('Not registered?')
  end
end