class TweetsController < ApplicationController
    def index
        @tweets=Tweet.order(:created_at)
        render :index
    end
    def show
        @tweet=Monster.tweets.find(id: params[:id])     
    end
    def create
        @tweet=Tweet.new(tweet_params)
        @tweet.content="contenido hardcodeado"
        @tweet.monster_id=1
        if @tweet.save
            redirect_to @tweet, notice: "tweet creado"
        else
            render :new
        end
    
    end
    def tweet_params
        params.require(:tweet).permit(:content, :monster_id)
    end
end
