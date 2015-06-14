class MymemosController < ApplicationController
  before_action :set_mymemo, only: [:show, :edit, :update, :destroy]

  # GET /mymemos
  # GET /mymemos.json
  def index
    @mymemos = Mymemo.all
  end

  # GET /mymemos/1
  # GET /mymemos/1.json
  def show
  end

  # GET /mymemos/new
  def new
    @mymemo = Mymemo.new
  end

  # GET /mymemos/1/edit
  def edit
  end

  # POST /mymemos
  # POST /mymemos.json
  def create
    @mymemo = Mymemo.new(mymemo_params)

    respond_to do |format|
      if @mymemo.save
        format.html { redirect_to @mymemo, notice: 'Mymemo was successfully created.' }
        format.json { render :show, status: :created, location: @mymemo }
      else
        format.html { render :new }
        format.json { render json: @mymemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mymemos/1
  # PATCH/PUT /mymemos/1.json
  def update
    respond_to do |format|
      if @mymemo.update(mymemo_params)
        format.html { redirect_to @mymemo, notice: 'Mymemo was successfully updated.' }
        format.json { render :show, status: :ok, location: @mymemo }
      else
        format.html { render :edit }
        format.json { render json: @mymemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mymemos/1
  # DELETE /mymemos/1.json
  def destroy
    @mymemo.destroy
    respond_to do |format|
      format.html { redirect_to mymemos_url, notice: 'Mymemo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mymemo
      @mymemo = Mymemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mymemo_params
      params.require(:mymemo).permit(:title, :body)
    end
end
