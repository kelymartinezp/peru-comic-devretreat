class CapitulosController < ApplicationController
  before_action :set_capitulo, only: [:show, :edit, :update, :destroy]

  # GET /capitulos
  # GET /capitulos.json
  def index
    @capitulos = Capitulo.all
  end

  # GET /capitulos/1
  # GET /capitulos/1.json
  def show
  end

  # GET /capitulos/new
  def new
    @capitulo = Capitulo.new
  end

  # GET /capitulos/1/edit
  def edit
  end

  # POST /capitulos
  # POST /capitulos.json
  def create
    @capitulo = Capitulo.new(capitulo_params)

    respond_to do |format|
      if @capitulo.save
        format.html { redirect_to @capitulo, notice: 'Capitulo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @capitulo }
      else
        format.html { render action: 'new' }
        format.json { render json: @capitulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capitulos/1
  # PATCH/PUT /capitulos/1.json
  def update
    respond_to do |format|
      if @capitulo.update(capitulo_params)
        format.html { redirect_to @capitulo, notice: 'Capitulo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @capitulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capitulos/1
  # DELETE /capitulos/1.json
  def destroy
    @capitulo.destroy
    respond_to do |format|
      format.html { redirect_to capitulos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capitulo
      @capitulo = Capitulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capitulo_params
      params.require(:capitulo).permit(:nombre, :numero_de_paginas)
    end
end
