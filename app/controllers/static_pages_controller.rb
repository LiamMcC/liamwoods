class StaticPagesController < ApplicationController
  def home
     @categories = Golfcat.all
     @items = Orderitem.all
  end

  def category
    xxx = params[:title]
    @items = Item.where("category like ?", xxx)
  end

  def help
   
  end

  def about
   
  end
  
  
  def paid
    
    @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status, "Paid by User: #{current_user.email}")
    
  end
end
