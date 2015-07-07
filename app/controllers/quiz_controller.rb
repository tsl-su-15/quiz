class QuizController < ApplicationController
  def questions
    @quiz = Quiz.new
    render 'questions'
  end

  def results
    @quiz = Quiz.new
    @quiz.set_responses([
                          params['question-1'],
                          params['question-2'],
                          params['question-3'],
                          params['question-4'],
                          params['question-5'],
                        ])
    render 'results'
  end

end







