require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'has a todo item' do
    item = Todo.new
    expect(item).to be_an_instance_of(Todo)
  end
end
