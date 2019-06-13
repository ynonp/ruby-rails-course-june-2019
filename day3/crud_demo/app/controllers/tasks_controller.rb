class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    authorize! :index, Task

    filter = params[:completed]
    @tasks = if filter.nil?
               Task.all
             elsif filter == "0"
               Task.in_progress
             elsif filter == "1"
               Task.completed
             end

    @tasks = @tasks.with_username.with_comments_count
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    authorize! :show, @task
    @comments = @task.comments_with_usernames
  end

  # GET /tasks/new
  def new
    authorize! :create, Task
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
    authorize! :edit, @task
  end

  # POST /tasks
  # POST /tasks.json
  def create
    authorize! :create, Task
    @task = Task.new(task_params.merge(user: current_user))

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    authorize! :edit, @task
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    authorize! :destroy, @task
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(
          :owner,
          :description,
          :priority,
          :completed,
          comments_attributes: [
              :id, :_destroy, :text
          ]
      )
    end
end












