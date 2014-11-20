module ApplicationHelper
  def question number
    "<h5 class='subheader'>#{Question.find_by(number: number).question}</h5>".html_safe
  end
end
