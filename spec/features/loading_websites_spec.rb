require 'rails_helper'

RSpec.feature "Loading Website", type: :feature do
  it "displays page title" do
    visit "/todos"

    expect(page).to have_css("header h1", text: "todos")
  end
end
