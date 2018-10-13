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
    redirect_to "/quizzes"
  end


  private
  
  def params_quiz
    params.permit(:question, :selection, :answer)
  end


end