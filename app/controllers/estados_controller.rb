class EstadosController < ApplicationController
  include ActionView::Helpers::FormOptionsHelper

  def index
    @estados = Estado.all
  end

  def new
    @estado = Estado.new
  end

  def create
    @estado = Estado.new(params[:estado])

    if @estado.save
      flash[:success] = 'Estado cadastrado com sucesso'
      redirect_to @estado
    else
      render action: :new
    end
  end

  def show
    @estado = Estado.find(params[:id])
  end

  def edit
    @estado = Estado.find(params[:id])
  end

  def update
    @estado = Estado.find(params[:id])

    if @estado.update_attributes(params[:estado])
      flash[:success] = 'Estado atualizado com sucesso'
      redirect_to @estado
    else
      render action: :edit
    end
  end

  def destroy
    @estado = Estado.find(params[:id])
    @estado.destroy

    redirect_to action: :index
  end

  def cidades
    estado = Estado.find(params[:id])

    cidades = [[]]
    estado.cidades.each do |cidade|
      cidades << [ cidade.nome, cidade.id ]
    end

    render text: options_for_select(cidades)
  end
end