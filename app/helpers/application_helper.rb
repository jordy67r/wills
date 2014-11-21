module ApplicationHelper
  def question number
    Question.find_by(number: number).question
  end
end
