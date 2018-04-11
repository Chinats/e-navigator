class InterviewsController < ApplicationController
  before_action :set_interview, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /users/:id/interviews
  def index
    @user = User.find(params[:user_id])
    @interviews = @user.interviews
  end

  # GET /users/:id/interviews/1
  def show
    @user = User.find(params[:user_id])
  end

  # GET /users/:id/interviews/new
  def new
    @user = current_user
    @interview = Interview.new
  end

  # GET /users/:id/interviews/1/edit
  def edit
    @user = User.find(params[:user_id])
  end

  # POST /users/:id/interviews
  def create
    @interview = Interview.new(interview_params)
    @interview.user = current_user
    @user = current_user
    if @interview.save
      redirect_to user_interview_path(@user, @interview), notice: '面接日程が作成されました。'
    else
      render :new
    end
  end

  # PATCH/PUT /users/:id/interviews/1
  def update
    @interview.user = current_user
    if @interview.update(interview_params)
      redirect_to user_interview_path, notice: '面接日程が更新されました。'
    else
      render :edit
    end
  end

  # DELETE /users/:id/interviews/1
  def destroy
    @interview.destroy
    redirect_to user_interviews_url, notice: '面接日程が削除されました。'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interview
      @interview = Interview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interview_params
      params.require(:interview).permit(:candidate, :approval)
    end
end
