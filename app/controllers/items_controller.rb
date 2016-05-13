class ItemsController < ApplicationController

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = list.items.build
  end 

  # GET /items/1/edit
  def edit
    item
  end

  # POST /items
  # POST /items.json
  def create
    @item = list.items.build(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to list_path @list }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if item.update(item_params)
        format.html { redirect_to list_path(@list)}
        format.json { render :show, status: :ok, location: items_url }
      else
        format.html { render :edit }
        format.json { render json: item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    item.destroy
    respond_to do |format|
      format.html { redirect_to @list}
      format.json { head :no_content }
    end
  end

  def complete
    respond_to do |format|
      format.html { redirect_to @list}
    end
  end

  private

  def list
    @list ||= List.find(params[:list_id])
  end
  
  def item
    @item ||= list.items.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white item through.
  def item_params
    params.require(:item).permit(:task, :description, :completed, :list_id)
  end
end
