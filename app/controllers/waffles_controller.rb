class WafflesController < ApplicationController

  def index
    @waffles = Waffle.all
  end

  def new
    @waffle = Waffle.new
  end
  def create
    @waffle = Waffle.new(waffle_params)

    if @waffle.save
      redirect_to @waffle
    else
      render 'new'
    end
  end

  def show
    @waffle = Waffle.find(params[:id])
  end

  def edit
    @waffle = Waffle.find(params[:id])
  end
  def update
    @waffle = Waffle.find(params[:id])

    if @waffle.update(waffle_params)
      redirect_to @waffle
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
  def waffle_params
    params.require(:waffle).permit(:name, :price)
  end

end
