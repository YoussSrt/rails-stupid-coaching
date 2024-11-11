class QuestionsController < ApplicationController
  # def ask : définit l'action ask qui sera exécutée lorsque l'utilisateur accède à la route /ask.
  def ask

  end

  # def answer : définit l'action answer qui sera exécutée lorsque l'utilisateur accède à la route /answer.
  def answer
    @question = params[:question]
    @answer = if @question == "I am going to work"
                "Great!"
              elsif @question.end_with?("?")
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
