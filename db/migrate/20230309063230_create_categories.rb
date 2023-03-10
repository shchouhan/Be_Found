class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      #t.integer :searcher_id
      t.string :category_type
      t.references :searcher, foreign_key:true
      t.references :post, foreign_key:true
      t.timestamps
    end
  end
end
