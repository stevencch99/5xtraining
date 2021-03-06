class TasksController < ApplicationController
  before_action :find_task, only: %i[show edit update destroy]

  def index
    # TODO change a better way to loading tasks from database
    @tasks = Task.all
  end

  def new
    @task = Task.new
    
    # TODO fix format error when rendering AJAX page in production mode
    # respond_to do |format|
    #   format.js { render 'new', layout: false }
    #   format.html { render 'new', layout: false }
    # end
  end

  def show
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to :root, notice: '成功新增任務'
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end

  def update
    if @task.update(task_params)
      redirect_to :root, notice: '更新成功'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy!
    redirect_to :root, notice: '任務已刪除'
  end

  def cancel
    redirect_to :root, notice: 'Cancel editing'
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :priority, :start_time, :end_time, :state, :user_id)
  end
end
