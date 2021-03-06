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
    flash_full_errors unless @todo.save
    redirect_back fallback_location: root_path
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    flash_full_errors unless @todo.update(todo_params)
    redirect_back fallback_location: root_path
  end

  def destroy
    if params[:id] == 'completed'
      Todo.where(completed: true).destroy_all
    else
      @todo = Todo.find_by(id: params[:id])
      flash_full_errors unless @todo.destroy
    end
    redirect_back fallback_location: root_path
  end

  private

  def todo_params
    params.require(:todo).permit(:completed, :description)
  end

  def flash_full_errors
    flash[:errors] = @todo.errors.full_messages
  end
end
