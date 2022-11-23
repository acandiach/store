class BrandsController < ApplicationController
  # before_action :authenticate_user!, except: %i[ index show ]

  def index
    @brands = Brand.all
  end

  def show
    brand
  end


  def new
    # @brand = current_user.brands.build
    @brand = Brand.new
  end

  def edit
    brand
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to brands_path, notice: "brand was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if brand.update(brand_params)
      redirect_to brands_path, notice: "brand was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    brand.destroy

    redirect_to brands_url, notice: "brand was successfully destroyed."
  end

  private
    def brand
      @brand = Brand.find(params[:id])
    end

    def brand_params
      params.require(:brand).permit(:name)
    end
end
