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
    Waffle.destroy(params[:id])

    redirect_to waffles_path
  end

  def destroy_multiple
    Waffle.destroy(params[:waffles])

    redirect_to waffles_path
  end

  def removeImage
    @waffle = Waffle.find(params[:id])
    @waffle.remove_image!
    @waffle.save
    redirect_to @waffle
  end

  private
  def waffle_params
    params.require(:waffle).permit(:name, :price, :image)
  end

end
