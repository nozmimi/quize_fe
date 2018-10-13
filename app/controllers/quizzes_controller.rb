class QuizzesController < ApplicationController
  
  def index
    begin
      @quizzes = Quiz.order("RANDOM()").first
    rescue
      @quizzez = nil
    end
  end
  
  def new
    @quiz = Quiz.new
  end
  
  def create
    @quiz = Quiz.new(params_quiz)
    @quiz.save
    redirect_to "/quizzes/list_all"
  end

  def list_all
    @quizzes = Quiz.order('id')
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    @quiz.update_attributes(params_quiz)
    redirect_to "/quizzes/list_all"
  end

  private
  
  def params_quiz
    params.permit(:question, :selection, :answer)
  end


end