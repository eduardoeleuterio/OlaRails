class CidadesController < ApplicationController
  include ActionView::Helpers::FormOptionsHelper
  def index
      @cidades =Cidade.all 
  end

  def new
    @cidade = Cidade.new
    end

  def create
    @cidade = Cidade.new(params[:cidade])
    if @cidade.save 
      flash[:success] = 'Cidade cadastrada com sucesso'
      redirect_to @cidade  
    else
      render action: :new
    end
  end
  def edit
    @cidade = Cidade.find(params[:id])
  end
  def update
    @cidade = Cidade.find(params[:id])
    
    if @cidade.update_attributes(params[:cidade])
      flash[:success] = 'Cidade atualizada com sucesso'
      redirect_to @cidade
    else
      render action: :edit
    end
  end

  def destroy
    @cidade = Cidade.find(params[:id])
    @cidade.destroy
    redirect_to :action => :index
  end
  def show
    @cidade =Cidade.find(params[:id])
  end
end