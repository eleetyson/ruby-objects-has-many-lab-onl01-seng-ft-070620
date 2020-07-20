require 'pry'
class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(post_title)
    post = Post.new add_post(post_title)
  end
  
  def self.post_count
    
  end
  
end