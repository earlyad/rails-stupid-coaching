class QuestionsController < ApplicationController
  ANSWERS = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']

  def ask
  end

  def answer
    @questions = params[:ask]
    if @questions.include? '?'
      @answers = ANSWERS[1]
    elsif @questions == 'i am going to work'
      @answers = ANSWERS[0]
    else
      @answers = ANSWERS[2]
    end
  end
end
