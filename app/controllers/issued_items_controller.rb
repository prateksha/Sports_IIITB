class IssuedItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_issued_item, only: [:show, :edit, :update, :destroy]

  # GET /issued_items
  # GET /issued_items.json
  def index
    @issued_items = IssuedItem.all
  end

  # GET /issued_items/1
  # GET /issued_items/1.json
  def show
  end

  # GET /issued_items/new
  def new
    @issued_item = IssuedItem.new
  end

  # GET /issued_items/1/edit
  def edit
  end

  # POST /issued_items
  # POST /issued_items.json
  def create
    @issued_item = IssuedItem.new(issued_item_params)

    respond_to do |format|
      if @issued_item.save
        format.html { redirect_to @issued_item, notice: 'Issued item was successfully created.' }
        format.json { render :show, status: :created, location: @issued_item }
      else
        format.html { render :new }
        format.json { render json: @issued_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issued_items/1
  # PATCH/PUT /issued_items/1.json
  def update
    respond_to do |format|
      if @issued_item.update(issued_item_params)
        format.html { redirect_to @issued_item, notice: 'Issued item was successfully updated.' }
        format.json { render :show, status: :ok, location: @issued_item }
      else
        format.html { render :edit }
        format.json { render json: @issued_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issued_items/1
  # DELETE /issued_items/1.json
  def destroy
    @issued_item.destroy
    respond_to do |format|
      format.html { redirect_to issued_items_url, notice: 'Issued item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issued_item
      @issued_item = IssuedItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issued_item_params
      params.require(:issued_item).permit(:Name, :RollNo, :Email, :Equipment, :IssueDate, :ReturnDate)
    end
end
