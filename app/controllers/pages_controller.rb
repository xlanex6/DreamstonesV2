class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home,
                                                  :full_process,
                                                  :project,
                                                  :testimonial,
                                                  :legals_mentions ]

  def home
  end
end
