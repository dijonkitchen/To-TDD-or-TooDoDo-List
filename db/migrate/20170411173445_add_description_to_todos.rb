class AddDescriptionToTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :description, :string, null: false
  end
end
