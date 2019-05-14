class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(strong_tasks)
    @task.save
    redirect_to task_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(strong_tasks)
    redirect_to task_path
  end

  def destroy
  end

  private

  def strong_tasks
    params.require(:task).permit(:title, :details)
  end
end
