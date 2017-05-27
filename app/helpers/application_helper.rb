module ApplicationHelper

  def important?(testimonial)
    if testimonial.important?
      return 'grid-item grid-item--width2'
    else
      return 'grid-item'
    end
  end

  def icon_category(last_project)
    if last_project == 'Renovation'
      'renovation'
    elsif last_project == 'New build'
      'newbuild'
    else
      'extension'
    end
  end

end
