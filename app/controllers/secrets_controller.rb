class SecretsController < ApplicationController
    def show
        if !session[:name]
            redirect_to controller: 'sessions', action: 'new'
        end
    end
end