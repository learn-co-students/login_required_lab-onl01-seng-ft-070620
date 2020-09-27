class SecretsController < ApplicationController
    before_action do
        redirect_to '/login' unless session[:name]
    end

    def show
    end
end 