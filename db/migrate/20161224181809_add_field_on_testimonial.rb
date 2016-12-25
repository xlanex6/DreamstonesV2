class AddFieldOnTestimonial < ActiveRecord::Migration[5.0]
  def change
    add_column :testimonials, :important, :boolean, default: false
  end
end
