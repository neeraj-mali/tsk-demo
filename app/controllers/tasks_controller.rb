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
    @task = Task.new(task_params)
    if @task.save 
      redirect_to @task 
    else
      render json: @task.error, status: :unprocessable_entity 
    end 
  end 

  def edit 
    @task = Task.find(params[:id])
  end 

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to @task 
    else 
      render json: @task.errors, status: :unprocessable_entity
    end 
  end 

  def distroy 
    @task = Task.find(params[:id])
    if @task.destroy 
      redirect_to root_path
    else 
      render @task.erros, status: :unprocessable_entity
    end 
  end 

  private 
  def task_params
    params.require(:task).permit(::title,:description,:time_limit,:assigned_by)
  end  
end
