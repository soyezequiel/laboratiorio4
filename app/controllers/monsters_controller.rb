class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find( params[:id])
    if(@monster.tweets.count == 0) then
      redirect_to "/tweets/new"
    end
  end
 
end
