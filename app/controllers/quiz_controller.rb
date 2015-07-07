class QuizController < ApplicationController
  def questions
    @quiz = Quiz.new
    render 'questions'
  end

  def results
    @quiz = Quiz.new
    @quiz.get_responses([
                          params['question-1'],
                          params['question-2'],
                          params['question-3'],
                          params['question-4'],
                          params['question-5'],
                        ])

    @counter_hash = {
      'boolean' => 0,
      'array' => 0,
      'integer' => 0,
      'string' => 0,
    }

    if params['question-1'] == 'boolean'
      @counter_hash['boolean'] += 1
    elsif params['question-1'] == 'array'
      @counter_hash['array'] += 1
    elsif params['question-1'] == 'integer'
      @counter_hash['integer'] += 1
    elsif params['question-1'] == 'string'
      @counter_hash['string'] += 1
    end

    if params['question-2'] == 'boolean'
      @counter_hash['boolean'] += 1
    elsif params['question-2'] == 'array'
      @counter_hash['array'] += 1
    elsif params['question-2'] == 'integer'
      @counter_hash['integer'] += 1
    elsif params['question-2'] == 'string'
      @counter_hash['string'] += 1
    end

    if params['question-3'] == 'boolean'
      @counter_hash['boolean'] += 1
    elsif params['question-3'] == 'array'
      @counter_hash['array'] += 1
    elsif params['question-3'] == 'integer'
      @counter_hash['integer'] += 1
    elsif params['question-3'] == 'string'
      @counter_hash['string'] += 1
    end

    if params['question-4'] == 'boolean'
      @counter_hash['boolean'] += 1
    elsif params['question-4'] == 'array'
      @counter_hash['array'] += 1
    elsif params['question-4'] == 'integer'
      @counter_hash['integer'] += 1
    elsif params['question-4'] == 'string'
      @counter_hash['string'] += 1
    end

    if params['question-5'] == 'boolean'
      @counter_hash['boolean'] += 1
    elsif params['question-5'] == 'array'
      @counter_hash['array'] += 1
    elsif params['question-5'] == 'integer'
      @counter_hash['integer'] += 1
    elsif params['question-5'] == 'string'
      @counter_hash['string'] += 1
    end

    @your_result = @counter_hash.max_by do |key, value|
      value
    end


    render 'results'
  end

end







