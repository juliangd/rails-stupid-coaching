class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(input)
    if input == 'I am going to work'
      'Great!'
    elsif input.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

# The answer.html.erb will display the question you ask your coach as well as his answer.
# The controller will need to read the question from params and compute an instance variable @answer for the view to display.
#  Here are two requests that you should be able to handle:
