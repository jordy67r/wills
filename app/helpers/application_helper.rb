module ApplicationHelper
  def full_title(page_title)
        base_title = "Express Wills"
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end
  def question number
    Question.find_by(number: number).question
  end
  def show_errors(object, field_name)
    if object.error.any?
      if !object.errors.messages[field_name].blank?
        object.errors.messages[field_name].join(", ")
      end
    end
  end 
end
