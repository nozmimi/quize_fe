class QuizzesController < ApplicationController
  
  def index
    @quiz = Quiz.order("RANDOM()").first
  end
  
  def new
    @quiz = Quiz.new
  end
  
  def create
    @quiz = Quiz.new(params_quiz)
    @quiz.save
    redirect_to "/quizzes"
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

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to "/quizzes/list_all"
  end

  private
  
  def params_quiz
    params.permit(:question, :selection, :selection2, :selection3, :selection4, :answer)
  end


end