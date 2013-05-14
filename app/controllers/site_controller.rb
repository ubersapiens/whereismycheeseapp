class SiteController < ApplicationController
  # before_filter :authorize, only: [:edit, :update, :destroy]
  
  def index
    if current_user
      @cheeses = @current_user.cheeses
      @rating = Rating.new
    else
      @cheeses = Cheese.all
      @user = User.new
      
      render :template => 'site/logged_out'
    end
  end
  
  def cheese
    @cheese = Cheese.find(params[:id])
  end
  
  def cheeses
    @order = params[:order] || 'name'
    if current_user
      @cheeses = @current_user.cheeses.first(9)
    else
      @cheeses = Cheese.includes(:milk_type, :country, :texture)
        .limit(9).order(@order)
    end
    render :cheeses, :layout => false
  end
  
  def ratings
    params[:rating][:cheese] = Cheese.find(params[:rating][:cheese])
    @rating = Rating.new(params[:rating])
    @rating.user = current_user
    
    if @rating.save
      @cheeses = @current_user.cheeses.limit(9)
      @rating = Rating.new
      
      render :template => 'site/index', :layout => false
    else
      render :index
    end
  end
  
  def signup
    @user = User.new params[:user]
    
    if @user.save
      redirect_to root_url
    else
      @cheeses = Cheese.all
      @rating = Rating.new
      render :index
    end
  end
  
  def login
    @user = User.find_by_email(params[:email])
    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      
      redirect_to root_url, notice: "Thank you for logging in!"
    else
      @cheeses = Cheese.all
      
      flash.now.alert = "Email or password is invalid"
      
      render :home
    end
  end

  def logout
    session[:user_id] = nil
    
    redirect_to root_url, notice: "Thanks and bye!"
  end
end
