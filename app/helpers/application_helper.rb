module ApplicationHelper

  def important?(testimonial)
    if testimonial.important?
      return "grid-item grid-item--width2"
    else
      return "grid-item"
    end
  end


end
