require 'rails_helper'

feature 'Visitor navigates to assignment index' do
  scenario 'they see a collection of assignments' do
    assignment_1 = create(:assignment, title: 'assignment one')
    assignment_2 = create(:assignment, title: 'assignment two')
    visit assignments_path

    expect(page).to have_css '.assignment-list'
    expect(page).to have_content 'assignment one'
    expect(page).to have_content 'assignment two'
  end
end
