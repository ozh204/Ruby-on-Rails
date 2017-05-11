class WafflesController < ApplicationController
  # Sprawdzam czy gofer jest na przcenie i dodaje go do odpowiedniej listy
  def index
    #@waffles = Waffle.all
    @waffles = Waffle.where.not(discount:true)
    @wafflesPromo = Waffle.where(discount:true)
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
    #params.require(:waffle).permit(:name, :price, :image)
    params.require(:waffle).permit(:name, :price, :image,:discount)
  end

end
