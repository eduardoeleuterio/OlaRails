class PessoasController <ApplicationController
    def adultos
        @adultos =[
            {nome: 'jose', idade: 35},
            {nome: 'gutsavb', idade: 12}
        ]
    end
    def criancas
        @criancas =[
            {nome: 'maria', idade: 9},
            {nome: 'joao', idade: 7}
        ]
    end
end