class RpsController < ApplicationController
  def new
   	@choose=params[:choose]
   	
  end
  def rock
   array=["rock","paper","scissors"]
   @item=array[rand(array.length)]
   if @item=="rock"
      @result="It is a Tie"	
   end
   if @item=="paper"
      @result="You Lose"  
   end
   if @item=="scissors"
   	  @result="You Win"
   end
  end
  def paper
   array=["rock","paper","scissors"]
   @item=array[rand(array.length)]
   if @item=="rock"
      @result="You Win"	
  end
   if @item=="paper"
      @result="It is a Tie" 
   end 
   if @item=="scissors"
   	  @result="You Lose"
   end
  end
  def scissors
   array=["rock","paper","scissors"]
   @item=array[rand(array.length)]
   if @item=="rock"
      @result="You Lose"
      end	
   if @item=="paper"
      @result="You Win"
      end  
   if @item=="scissors"
   	  @result="It is a Tie"	
   	end
  end
end