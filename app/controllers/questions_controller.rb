class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].downcase
    if @question == "I am going to work"
      return @answer = "great!"
    elsif @question.end_with?("?")
      return @answer = 'Silly question, get dressed and go to work!.'
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
