class ColectionController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy]
  layout false
  # GET /product_categories
  # GET /product_categories.json
  def index
    @collections = Collection.all
   
  end

  # GET /product_categories/1
  # GET /product_categories/1.json
  def show
   
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category
      @collection = Collection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collection_params

      params[:collection]
    end
end
