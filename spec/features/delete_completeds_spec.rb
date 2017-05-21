require 'rails_helper'

RSpec.feature 'DeleteCompleteds', type: :feature do
  it 'deletes all completed todos when clicked' do
    visit '/'
    page.fill_in 'new-todo', with: 'Move to California'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')
    click_button('Clear completed')
    expect(page).to_not have_selector("input[value='Move to California']")
  end
end
