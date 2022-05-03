class PaisesController < ApplicationController
  include ActionView::Helpers::FormOptionsHelper
  def index
      @paises = Pais.all 
  end
  def new
    @pais = Pais.new
  end

  def create
    @pais = Pais.new(params[:pais])
    if @pais.save 
      flash[:success] = 'Pais cadstrado com sucesso'
      redirect_to @pais  
    else
      render action: :new
    end
  end
  def edit
    @pais = Pais.find(params[:id])
  end
  def update
    @pais = Pais.find(params[:id])
    
    if @pais.update_attributes(params[:pais])
      flash[:success] = 'Pais atualizado com sucesso'
      redirect_to @pais
    else
      render action: :edit
    end
  end

  def destroy
    @pais = Pais.find(params[:id])
    @pais.destroy
    redirect_to :action => :index
  end
  def show
    @pais =Pais.find(params[:id])
  end
end