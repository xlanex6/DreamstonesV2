module ApplicationHelper

  def important?(testimonial)
    if testimonial.important?
      return "grid-item grid-item--width2"
    else
      return "grid-item"
    end
  end

  def icon_category(last_project)
    if last_project == "Renovation"
        "renovation"
      elsif last_project == "New build"
        "newbuild"
      else
        "extension"
    end
  end

  def indicator_generation(photo_number)
    counter = 0
    indicator_precode = []
    photo_number.times do |photo|
      indicator_precode << "#{counter}"
      counter += 1
    end
    indicator_precode
  end

end
