class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string :text
      t.string :author
      t.string :video

      t.timestamps
    end
  end
end
