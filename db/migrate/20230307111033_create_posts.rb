class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :job_role
      t.text :job_description
      t.integer :vacancies
      t.string :post_by
      t.date :posted_on
      t.text :contact
      t.text :address

      t.timestamps
    end
  end
end
