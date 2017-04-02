class TravelsController < ApplicationController
  before_action :find_travel, only: [:show, :edit, :update, :destroy]

def index
	if params[:category].blank?
	@travels= Travel.all.order("created_at DESC")
    else
        @category_id =Category.find_by(name: params[:category]).id	
        @travels=Travel.where(:category_id => @category_id).order("created_at DESC")
    end

end

def show
	
end

def new
	@travel=current_user.travels.build
	@categories=Category.all.map{ |c| [c.name, c.id]}

end

def edit
	@categories=Category.all.map{ |c| [c.name, c.id]}

end

def update
	@categories=Category.all.map{ |c| [c.name, c.id]}
	if  @travel.update(travel_params)
		redirect_to travel_path(@travel)
	else
		render 'edit'
		
	end
end

def destroy
	@travel.destroy
	redirect_to root_path
	
end

def create
	@travel=current_user.travels.build(travel_params)
    @travel.category_id = params[:category_id]
	if @travel.save
		redirect_to root_path
	else
        render 'new'
	end
	
end

private

 def travel_params
 	params.require(:travel).permit(:destination, :description_short, :description_full, :price, :agent, :category_id, :travel_img)
 	
 end
 
 def find_travel
	@travel= Travel.find(params[:id])
 end


end
