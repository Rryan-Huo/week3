class DiceController < ApplicationController

   def new
   	 
   end
   def roll
   	@num1=rand(1..6)
   	@num2=rand(1..6)
   	@sum=@num1+@num2
   	if @sum==11 || @sum==7

   		render :action =>'cong'
   		end
   	else if @sum==2 || @sum==3 || @sum==12
   			render :action => 'lose'
   		return
   	end
   end
   def cong
   	  
   end
   def lose
   	  
   end
   def point
   	  @sum=params[:id]
   	  @num1=rand(1..6)
   	  @num2=rand(1..6)
   	  @sum2=@num1+@num2
   	  if @sum2==7
   	  	render :action => 'lose'
   	  end
   	  else if @sum2==@sum.to_i
   	  	render :action =>'cong'
   	  end
   	  
   end

end