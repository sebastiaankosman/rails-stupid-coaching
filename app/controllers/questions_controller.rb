class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:question]

    if @input == 'I am going to work'
      @answer = 'great'
    elsif @input.to_s[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
