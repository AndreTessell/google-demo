class ProductsController < ApplicationController
  autocomplete :product, :name, :full => true

  def index
    respond_to do |format|
      if params[:search]
        @products = Product.where("name LIKE ?", "%#{params[:search]}%").order('name').paginate(:page => params[:page])
      else
        @products = Product.all.paginate(:page => params[:page])
      end
      format.json {
        @products = Product.select(:name).limit(5000)
      }
      format.html
    end
  end

end
