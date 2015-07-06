class QuizController < ApplicationController
  def questions
    @questions = [
      {
        'question' => "What describes your worldview?",
        'responses' => [
          { 'response' => 'Justice over mercy', 'value' => 'boolean'},
          { 'response' => 'Order is everything', 'value' => 'array'},
          { 'response' => 'If you can\'t count it, it doesn’t matter', 'value' => 'integer'},
          { 'response' => 'Information is not knowledge', 'value' => 'string'}
        ]
      },
      {
        'question' => "What is your favorite food?",
        'responses' => [
          { 'response' => 'Truth is your only sustenance', 'value' => 'boolean'},
          { 'response' => 'You’ll take anything you can get', 'value' => 'array'},
          { 'response' => 'Whole foods', 'value' => 'integer'},
          { 'response' => 'Alphabet soup', 'value' => 'string'}
        ]
      },
      {
        'question' => "What are you doing on a Friday night?",
        'responses' => [
          { 'response' => 'Logic problems', 'value' => 'boolean'},
          { 'response' => 'Hanging out with a bunch of friends', 'value' => 'array'},
          { 'response' => 'Math, of course', 'value' => 'integer'},
          { 'response' => 'Curled up with a book', 'value' => 'string'}
        ]
      },
      {
        'question' => "What is your favorite color?",
        'responses' => [
          { 'response' => 'Black (or white)', 'value' => 'boolean'},
          { 'response' => 'You love the entire list', 'value' => 'array'},
          { 'response' => 'Red, yellow or blue', 'value' => 'integer'},
          { 'response' => 'Shades of gray', 'value' => 'string'}
        ]
      },
      {
        'question' => "What is your biggest pet peeve?",
        'responses' => [
          { 'response' => 'People who don’t have a strong sense of right and wrong', 'value' => 'boolean'},
          { 'response' => 'A disorganized workspace', 'value' => 'array'},
          { 'response' => 'Being forced to put your thoughts into words', 'value' => 'integer'},
          { 'response' => 'Misquoted phrases', 'value' => 'string'}
        ]
      }
    ]

    render 'questions'
  end

  def results
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







