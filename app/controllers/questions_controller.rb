class QuestionsController < ApplicationController
end

class QuestionsController < ApplicationController
  def ask
    # This renders the form for the user to ask a question.
  end

  def answer
    # Retrieve the question from the params hash
    @question = params[:question]

    # Determine the coach's answer based on the question
    if @question.blank?
      @answer = "I can't hear you! Please ask a question."
    elsif @question.downcase == "i am going to work right now!"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
