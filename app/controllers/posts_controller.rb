class PostsController < ApplicationController

    def index
    end

    def new
        @posts = Post.new
      end

      def show
        @posts = Post.find_by(id: params[:id])
      end

      def create
        post = Post.new(post_params)
    
        if post.save
            flash[:notice] = "診断が完了しました"
            redirect_to post_path(post.id)
        else
            redirect_to :action => "new"
        end
      end
    
      
      private
      def post_params
          params.require(:post).permit(:id, :question, :question2)
      end

end
