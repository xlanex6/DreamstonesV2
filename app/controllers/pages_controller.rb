class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :full_process,:project, :testimonial ]

  def home
  end
end
