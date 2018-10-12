class QuizzesController < ApplicationController
  
  def index
    # @quizzes = Quiz.all
    # @quizzes = Quiz.order("RANDOM()").first
  end
  
  def new
    @quiz = Quiz.new
  end
  
  def create
    @quiz = Quiz.new(params_quiz)
    @quiz.save
    redirect_to "/quizzes"
  end


  private
  
  def params_quiz
    params.permit(:question, :selection, :answer)
  end


end