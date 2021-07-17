module Api::V1
    class PostsController < ApplicationController
        def index 
            $redis.set("test", "bb")
            Time.zone = "Hanoi"
            p Time.zone.now.strftime("%Y-%m-%d %H:%M:%S")
            @posts = Post.all
            @posts = Post.all
            @posts2 = Post.all
            @posts3 = Post.all
            @count_post = @posts.count
            @count_post_1 = @posts.count
            render json: { data: @posts,data_post2: @posts2, data_post3: @posts3, user: current_user, count_post: @count_post, count_post_1: @count_post_1 }
        end
    end
end