class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :full_process ]

  def home
  end
end
