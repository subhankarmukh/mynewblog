class BlogCategory < ActiveRecord::Base
	#Association
	has_and_belongs_to_many :blog_posts,
										#class_name: BlogPost,
										join_table: :categories_posts,
										foreign_key: :category_id,
										association_foreign_key: :post_id
    #Validation
	SLUG_REGEX = /\A^[\w&-]+$\Z/
	validates :title,   presence: true,
	                       		length: { maximum: 250 }
	validates :slug,    presence: true,
		                        uniqueness: { :case_sensitive => false },
		                        length:     { maximum: 250 },
		                        format:  	 SLUG_REGEX
	validates :content, presence: true, length: { maximum: 500 }									
end
