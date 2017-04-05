class AddPortofolioorderToPortofolio < ActiveRecord::Migration[5.0]
  def change
    add_column :portofolios, :portofolio_order, :integer
  end
end
