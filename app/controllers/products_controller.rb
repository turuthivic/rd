class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_admin!, except: [:new, :create, :edit, :update, :destroy]
  # layout "products", except: [:show]

  
  # GET /products
  # GET /products.json
  def index
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end
    # @subcategory = Subcategory.find_by id: params['subcategory.id']
    @category = Category.where(@category_id)
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @prod = Product.where(@category_id)
    @category = Category.where(@category_id)
  end

  # GET /products/new
  def new
    @product = Product.new 
    @categories = Category.all.map { |c| [c.name, c.id]}
    @subcategories = Subcategory.all.map { |s| [s.title, s.id]  }
  end

  # GET /products/1/edit
  def edit
    @category = Category.where(@category_id)
    @categories = Category.all.map { |c| [c.name,c.id]}
    @subcategories = Subcategory.all.map { |s| [s.title, s.id]  }
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.category_id = params[:category_id]
    @product.subcategory_id = params[:subcategory_id]
    
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :category_id, :price, :image)
    end
    
end
