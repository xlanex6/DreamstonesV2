class TestimonialsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]

  def index
    @testimonials = Testimonial.all
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.save
      redirect_to @testimonial, notice: "Your testimonial has been succefully added"
    else
      render :new
    end
  end

  private

  def testimonial_params
    params.require(:project).permit(:author,
                                    :text,
                                    :video)
  end

end
