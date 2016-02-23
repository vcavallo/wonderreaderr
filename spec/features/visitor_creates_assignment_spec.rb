require 'rails_helper'

feature 'Visitor creates an assignment' do
  scenario 'they get to a form' do
    visit new_assignment_path

    expect(page).to have_content 'New Assignment'
    expect(page).to have_css '.new-assignment'
  end

  scenario 'they fill out form successfully' do
    visit new_assignment_path
    fill_in 'Link', with: "http://google.com"
    fill_in 'Title', with: "Google"
    select("Required", from: 'Level')

    click_button 'Create Assignment'

    expect(page).to have_content 'Success'
    expect(page).to have_content 'Google'
  end

  pending 'they don\'t fill out the form properly'
end

