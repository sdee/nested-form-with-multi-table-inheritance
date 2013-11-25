class PensController < ApplicationController
  before_action :set_pen, only: [:show, :edit, :update, :destroy]

  # GET /pens
  # GET /pens.json
  def index
    @pens = Pen.all
  end

  # GET /pens/1
  # GET /pens/1.json
  def show
  end

  # GET /pens/new
  def new
    @pen = Pen.new
  end

  # GET /pens/1/edit
  def edit
  end

  # POST /pens
  # POST /pens.json
  def create
    @pen = Pen.new(pen_params)

    respond_to do |format|
      if @pen.save
        format.html { redirect_to @pen, notice: 'Pen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pen }
      else
        format.html { render action: 'new' }
        format.json { render json: @pen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pens/1
  # PATCH/PUT /pens/1.json
  def update
    respond_to do |format|
      if @pen.update(pen_params)
        format.html { redirect_to @pen, notice: 'Pen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pens/1
  # DELETE /pens/1.json
  def destroy
    @pen.destroy
    respond_to do |format|
      format.html { redirect_to pens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pen
      @pen = Pen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pen_params
      params[:pen]
    end
end
