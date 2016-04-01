class BlogPost < ActiveRecord::Base
	has_and_belongs_to_many :blog_categories, 
											  #class_name: BlogCategory,
											  join_table: :categories_posts,
											  foreign_key: :post_id,
											  association_foreign_key: :category_id

    belongs_to :User
end
