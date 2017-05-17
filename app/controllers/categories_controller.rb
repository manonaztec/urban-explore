class CategoriesController < ApplicationController

  def product_params
  params.require(:category).permit(:name, :photo)
  end

end
