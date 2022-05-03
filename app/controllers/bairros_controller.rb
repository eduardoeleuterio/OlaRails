class BairrosController  < ApplicationController
  include ActionView::Helpers::FormOptionsHelper

  def index
    @bairros = Bairro.all
  end

  def new
    @bairro = Bairro.new
  end

  def create
    @bairro = Bairro.new(params[:bairro])

    if @bairro.save
      flash[:success] = 'Bairro cadastrado com sucesso'
      redirect_to @bairro
    else
      render action: :new
    end
  end

  def show
    @bairro = Bairro.find(params[:id])
  end

  def edit
    @bairro = Bairro.find(params[:id])
  end

  def update
    @bairro = Bairro.find(params[:id])

    if @bairro.update_attributes(params[:bairro])
      flash[:success] = 'Bairro atualizado com sucesso'
      redirect_to @bairro
    else
      render action: :edit
    end
  end

  def destroy
    @bairro = Bairro.find(params[:id])
    @bairro.destroy

    redirect_to action: :index
  end
end