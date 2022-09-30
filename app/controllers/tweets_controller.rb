class TweetsController < ApplicationController
    def index
        @tweets=Tweet.order(:created_at)
        render :index
    end
    def show
        @tweet=Tweet.find(params[:id])     
    end
    def create
        @tweet=Tweet.new(tweet_params)
        if @tweet.save
            redirect_to @tweet
        else
            render :new
        end
    
    end
    def tweet_params
        params.require(:tweet).permit(:content, :monster_id)
    end
end
