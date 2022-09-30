class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
    if(@monster.tweet.count=0) 
      <%link_to "Twittear",'tweets#create'%>
  end
end
