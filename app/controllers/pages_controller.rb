class PagesController < ApplicationController
    before_action :authenticate_user!
    
    before_action :authenticate_user! 
    
    def landing_page
        @jft = JftTool.grab_html
        @post = Post.new
        @posts = Post.all
    end

    def profile

    end

    def area

    end

    def meetings

    end

    def connections
       @connections = current_user.connections
       # @users = []
       # @connections.each {|x| @users << (User.find(x.connection_id)).email } 
    end
    
end
