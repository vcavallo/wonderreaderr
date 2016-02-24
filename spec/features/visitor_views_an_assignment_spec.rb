require 'rails_helper'

feature 'Visitor views an assignment' do
  scenario 'they get to an assignment\'s page' do
    assignment_1 = create(
      :assignment,
      title: 'assignment one',
      link: 'http://google.com',
      level: 'Required'
    )

    visit assignment_path(assignment_1)

    expect(page).to have_content 'assignment one'
    expect(page).to have_link('http://google.com', href: 'http://google.com')
    expect(page).to have_content 'Required'
    expect(page).to have_css '.assignment'
  end
end

