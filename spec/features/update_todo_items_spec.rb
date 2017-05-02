require 'rails_helper'

RSpec.feature "Update Todo Items", type: :feature do
  it "checks a todo item to complete it" do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')
    expect(checkbox.checked?).to eq(true)
  end

  it "unchecking a todo item sets it as not completed" do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')
    checkbox.click
    click_button('Update Todo')
    expect(checkbox.checked?).to eq(false)
  end
end
