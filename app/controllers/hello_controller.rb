
class HelloController < ApplicationController
    def world
        @alfabeto=%w{a b c d e f g h i j k l m n o p q r s t u v w x y z}
        @hash= {:chave => 'valor'}
        @pessoas= [    {:nome => 'João'}]
        @pessoas= [    {:nome => 'João'}]
    end
end