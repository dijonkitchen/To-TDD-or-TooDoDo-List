require 'rails_helper'

RSpec.feature "Todo List", type: :feature do
  it "enters and displays a new todo item" do
    visit '/'
    page.fill_in 'new todo', with: 'Buy milk', class: 'new-todo'
    find('.new-todo').native.send_keys(:return)
    expect(page).to have_text('Buy milk')
  end
end
