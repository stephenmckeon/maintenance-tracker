class TasksController < ApplicationController
  def index
    @categories = Category.includes(:tasks).all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @categories = Category.all
  end

  def create
    Task.create(
      name: task_params[:name],
      description: task_params[:description],
      interval: task_params[:interval],
      category:
    )

    redirect_to tasks_path
  end

  def complete
    task = Task.find(params[:id])
    task.complete(note_params)

    redirect_to root_path
  end

  private

  def category
    Category.find_by(code: task_params[:category])
  end

  def task_params
    params.require(:task).permit(:name, :description, :interval, :category)
  end

  def note_params
    params.require(:note)
  end
end
