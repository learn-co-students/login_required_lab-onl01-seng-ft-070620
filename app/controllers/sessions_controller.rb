class SessionsController < ApplicationController
    def new

    end

    def create
        if params[:name] == nil || params[:name] == ""
            redirect_to controller: 'sessions', action: 'new'
        end
        session[:name] = params[:name]
    end

    def destroy
        session.delete :name
    end
end