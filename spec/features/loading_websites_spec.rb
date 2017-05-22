require 'rails_helper'

RSpec.feature "Loading Website", type: :feature do
  it "displays page title when going to root page" do
    visit "/"

    expect(page).to have_css("header h1", text: "todos")
  end
end
