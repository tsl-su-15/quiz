class QuizController < ApplicationController
  def questions
    render 'questions'
  end

  def results
    render 'results'
  end
end
