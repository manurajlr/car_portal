class UsersController < ApplicationController
	def index
		@user=User.new
		@makes = Make.all.collect {|p| [ p.name, p.id ] }
	end
	def create
    p "hiiiiiiiiiii , you had arrived at create"
    p params
    if(params[:make_id].present?)
			@models = Model.where(make_id: params[:make_id]).collect {|p| [ p.name, p.id ] }
	  end
	  if(params[:model_id].present?)
			@versions = Car.where(model_id: params[:model_id]).collect {|p| [ p.version_name, p.id ] }
	  end
		respond_to do |format|
    	format.html { redirect_to users_url }
    	format.js 
    end
	end

 end
