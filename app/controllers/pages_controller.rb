class PagesController < ApplicationController
    before_action :authenticate_user!
    
    before_action :authenticate_user! 
    
    def landing_page

    end

    def profile

    end

    def area

    end

    def meetings

    end

    def connections
       @connections = current_user.connections 
    end
    
end
