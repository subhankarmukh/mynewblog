class BlogPostsController < InheritedResources::Base
  authorize_resource
  private

    def blog_post_params
      params.require(:blog_post).permit(:title, :content)
    end
end

