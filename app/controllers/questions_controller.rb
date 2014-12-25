class QuestionsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new]

  def index
    @questions = Question.all
    respond_with(@questions)
  end

  def show
    @answer = Answer.new
    respond_with(@question)
  end

  def new
    @question = Question.new
    #render :text => @question.body_html
    respond_with(@question)
  end

  def edit
  end

  def create
    @question = Question.new(question_params)
    @question.save
    respond_with(@question)
  end

  def update
    @question.update(question_params)
    respond_with(@question)
  end

  def destroy
    @question.destroy
    respond_with(@question)
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:body, :body_html, :imageurl, :user_id, :title, :content, :category)
    end
end
