class TasksController < ApplicationController
  before_action :find_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
  end

  def create
    @task = Task.create(task_params)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task.update(task_params)
  end

  def destroy
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :priority, :start_time, :end_time, :state, :user_id)
  end
end
