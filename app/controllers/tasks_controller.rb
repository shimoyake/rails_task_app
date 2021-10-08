class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    flash[:notice]="スケジュールを登録しました"
    redirect_to tasks_path
  end
  
  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    flash[:notice]="編集が完了しました"
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice]="スケジュールを削除しました"
    redirect_to tasks_path
  end

  private
    def task_params
      params.require(:task).permit(:tittle,:bigin,:finish,:allday,:memo)
    end
end