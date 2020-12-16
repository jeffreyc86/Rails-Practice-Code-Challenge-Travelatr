class Destination < ApplicationRecord
has_many :posts
has_many :bloggers, through: :posts

    def last_five_posts
        sorted_posts = posts.sort_by(&:created_at).reverse
        [sorted_posts[0], sorted_posts[1], sorted_posts[2], sorted_posts[3], sorted_posts[4]]
    end 
    
    def mlp
        posts.max_by { |post| post.likes }
    end

    def average_age
        ages = bloggers.uniq.map {|b| b.age}
        ages.sum / ages.length
    end

end
