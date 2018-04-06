class InterviewsController < ApplicationController
  before_action :set_interview, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /interviews
  def index
    @user = User.find(params[:user_id])
    @interviews = @user.interviews
  end

  # GET /interviews/1
  def show
  end

  # GET /interviews/new
  def new
    @interview = Interview.new
  end

  # GET /interviews/1/edit
  def edit
  end

  # POST /interviews
  def create
    @interview = Interview.new(interview_params)
    @interview.user = current_user
    if @interview.save
      redirect_to @interview, notice: '面接日程が作成されました。'
    else
      render :new
    end
  end

  # PATCH/PUT /interviews/1
  def update
    if @interview.update(interview_params)
      redirect_to @interview, notice: '面接日程が更新されました。'
    else
      render :edit
    end
  end

  # DELETE /interviews/1
  def destroy
    @interview.destroy
    redirect_to interviews_url, notice: '面接日程が削除されました。'
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
