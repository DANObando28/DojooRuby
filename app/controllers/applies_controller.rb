class AppliesController < ApplicationController
    def index
        @applies = Apply.all
    end
    def show
        @applies = Apply.find(params[:id])
    end
    def new
        @applies = Apply.new
    end
    def create
        @applies = Apply.new(tittle: params[:apply][:tittle], edad: params[:apply][:edad], body: params[:apply][:body], name: params[:apply][:name])
        @applies.save
        redirec_to @applies
    end
end