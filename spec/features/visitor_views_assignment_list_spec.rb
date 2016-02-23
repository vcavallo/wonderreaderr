require 'rails_helper'

feature 'Visitor navigates to assignment index' do
  scenario 'they see a collection of assignments' do
    visit assignments_path

    expect(page).to have_css '.assignment-list'
  end
end
