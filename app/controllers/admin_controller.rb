class AdminController < ApplicationController
    
    def login
        if request.post?
          if params[:username]=='admin' && params[:password]=='admin@123'
            session[:admin]="admin"
            flash[:notice]="You have successfully logged in."
            redirect_to :controller=>:students
          else
            flash[:notice]="invalid admin credentials"
            render :action=>:login
          end
        end
    end

    def logout
        session[:admin] = nil
        flash[:notice]="You have successfully logged out."
        render :action => :login
    end
end
