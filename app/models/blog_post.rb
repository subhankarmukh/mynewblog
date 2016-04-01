class BlogPost < ActiveRecord::Base

	#associations
	has_and_belongs_to_many :blog_categories, 
											  #class_name: BlogCategory,
											  join_table: :categories_posts,
											  foreign_key: :post_id,
											  association_foreign_key: :category_id

    belongs_to :User

    #validation
    validates :title, presence: true,
                      length: { maximum: 250 }		
    validates :content, presence: true, 
    		    		length: { minimum: 10 }               
end
