class AnswersController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new]

  def index
    @answers = Answer.all
    respond_with(@answers)
  end

  def show
    respond_with(@answer)
  end

  def new
    @answer = Answer.new
    respond_with(@answer)
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.save
    #respond_with(@answer)
    redirect_to @answer.question
  end

  def update
    @answer.update(answer_params)
    #respond_with(@answer)
    redirect_to @answer.question
  end

  def destroy
    @answer.destroy
    #respond_with(@answer)
    redirect_to @answer.question
  end

  private
    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.require(:answer).permit(:body, :body_html, :user_id, :upvotes, :downvotes, :content, :imageurl, :producturl, :question_id)
    end
end
