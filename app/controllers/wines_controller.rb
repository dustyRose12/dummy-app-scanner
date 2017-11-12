class WinesController < ApplicationController
require 'ocr_space'

# AIzaSyAekv-XklAkpGsq5Elt-WBxI5ELo0Wbero


def index
  @resource = OcrSpace::Resource.new(apikey: "9c919eb18788957")
  @wines = Wine.all


  @result = @resource.clean_convert file: "app/assets/images/ema-menu.jpg"

end

def new
  @wine = Wine.new
end

def create
  @wine = Wine.new(
                                name: params[:name],
                                price: params[:price],
                                rating: params[:rating]
                                  )
  @wine.save

end

def show
  @wine = Wine.find(params[:id])
end

def edit
    @wine = Wine.find(params[:id])
    @wine.assign_attributes(
                                            name: params[:name],
                                            price: params[:price],
                                            rating: params[:rating]
                                            )
    @wine.save

end

def destroy
    wine = Wine.find(params[:id])
    wine.destroy
end

def get_menu
 #     @image = params[:??? what goes here?
     
      if @wine
        flash[:success] = "Here is the Menu you scanned:"
#have to change this:         render json: { id: @wine.id, url: "/wines/#{@wine.id}" }
      else
        flash[:danger] = "Image not scanned"
 #have to change this:       render json: { errors: 'Wine not found' }
      end
end

def scan_menu
end

end
