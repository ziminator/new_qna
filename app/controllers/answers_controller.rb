class AnswersController < ApplicationController
  def create
    @answer = question.answers.new(answer_params)
  end

  private

  def answers
    @answers ||= params[:id] ? Answer.find(params[:id]) : Answer.new
  end

  def question
    @question ||= params[:question_id] ? Question.find(params[:question_id]) : nil
  end

  def answer_params
    params.require(:answer).permit(:body)
  end
end
