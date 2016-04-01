class CreateBlogCategories < ActiveRecord::Migration
  def change
    create_table :blog_categories do |t|
      t.string :title
      t.string :slug
      t.text :description

      t.timestamps null: false
    end
    add_index :blog_categories, :slug, unique: true
  end
end
