class Quiz
  attr_accessor :questions,
                :counter_hash,
                :response_array

  def initialize
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

    @counter_hash = {
      'boolean' => 0,
      'array' => 0,
      'integer' => 0,
      'string' => 0,
    }
  end

  def set_responses(array_of_responses)
    @response_array = array_of_responses
  end

  def grade_responses
    response_array.each do |response|
      if response == 'boolean'
        @counter_hash['boolean'] += 1
      elsif response == 'array'
        @counter_hash['array'] += 1
      elsif response == 'integer'
        @counter_hash['integer'] += 1
      elsif response == 'string'
        @counter_hash['string'] += 1
      end
    end
    return counter_hash
  end

  def result
    grade_responses
    return counter_hash.max_by do |key, value|
      value
    end
  end

end





