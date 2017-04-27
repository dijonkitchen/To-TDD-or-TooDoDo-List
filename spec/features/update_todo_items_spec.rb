require 'rails_helper'

RSpec.feature "UpdateTodoItems", type: :feature do
  it "complete a todo item" do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    click_button('complete')
    expect(page).to have_css('completed', text: 'Buy milk')
  end
end
