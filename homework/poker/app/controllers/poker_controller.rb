class PokerController < ApplicationController
     def new
     	@pokers=[]
     	for i in 1 ..5 do
     		@pokers << rand(1..13)
     	end
     	
     end
end