class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 30}

#     The total likes on all of that blogger's posts - method blogger.rb
    def total_likes
        self.posts.sum {|post| post.likes}
    end

    def most_liked_post
        posts.max_by {|post| post.likes}
    end
# A link to that blogger's featured post (the post with the most likes) - blogger.rb
# BONUS A list of that user's top 5 most written about destinations 
# (the destinations with the most posts)
    # def top_five
    #     # top_five = {}
    #     # destinations.each do |destination|
    #     #     if top top_five[:destination]
    #     #         top_five[:destination] += 1
    #     #     else top_five[:destination] = 1
    #     #     end
    #     #     top_five.map {|dest, amt| dest}
    #     bs = self.destinations
    #     destinations.uniq.map { |dest| {dest.name => bs.count(dest)} } 
      
    # end

end
