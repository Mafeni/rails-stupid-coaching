class PagesController < ApplicationController
  def home
    # work
  end

  def ask
    # work
  end

  def answer
    @user_question = params[:question]

    if @user_question.include? '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @user_question.downcase == 'i am going to work right now!'
      @coach_answer = 'Nice one'
    else
      @coach_answer = "I don\'t care, get dressed and go to work!"
    end
  end
end
