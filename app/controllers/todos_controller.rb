class TodosController < ApplicationController
  def index
    if params[:completed]
      @todos = Todo.where(completed: params[:completed]).order(:created_at)
    else
      @todos = Todo.all.order(:created_at)
    end
    @count = Todo.where(completed: false).count
  end

  def create
    @todo = Todo.new(description: params[:'new-todo'])
    flash[:errors] = @todo.errors.full_messages unless @todo.save
    redirect_to_home
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    flash[:errors] = @todo.errors.full_messages unless @todo.update(todo_params)
    redirect_to_home
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    flash[:errors] = @todo.errors.full_messages unless @todo.destroy
    redirect_to_home
  end

  private

  def todo_params
    params.require(:todo).permit(:completed, :description)
  end

  def redirect_to_home
    redirect_to root_path
  end
end
