class CheesesController < ApplicationController
    def index
        # byebug
        cheeses = Cheese.all
        render json: cheeses
    end

    def order_by_price
        cheeses = Cheese.order(price: :desc)
        render json: cheeses
    end
end
