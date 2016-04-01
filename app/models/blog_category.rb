class BlogCategory < ActiveRecord::Base
	has_and_belongs_to_many :blog_posts,
										#class_name: BlogPost,
										join_table: :categories_posts,
										foreign_key: :category_id,
										association_foreign_key: :post_id
end
