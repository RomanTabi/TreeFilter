class MainController < ApplicationController
  def index
  	if(params.has_key?(:string))
  		@string = params[:string]
  		# Vyber vsetky
  		@items = Item.where(nil)
  		# Vyber tie, ktore obsahuju zadany retazec
  		@items = @items.contains(@string)

  		@itemTree = Array.new
  		
  		@items.each do |item|
  			getItemTree(item)
  		end
  	else
  		@items = Item.all()
  	end
  end

  def getItemTree(item)
	if(item.myId != item.parentId)
		
		parent = Item.getParent(item.parentId)
		getItemTree(parent.first)
		
		unless @itemTree.include?(item)
			@itemTree << item			
		end
	else
		unless @itemTree.include?(item)
			@itemTree << item			
		end
	end
  end
end
