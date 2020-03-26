class UsersController < ApplicationController
  def login
  end

  def signin
      @user = User.find_by(name: params[:name])
      if @user.try(:authenticate, params[:password])
        session[:id] = @user.id
        redirect_to :root
      else
        render :login
      end
  end

  def register
  end

  def signup
    if params[:password]==params[:password_confirmation]
      @user = User.create(name: params[:name], password: params[:password], password_confirmation: params[:password_confirmation])
      if @user.persisted?
        session[:id] = @user.id
        redirect_to :root
      else
        render :register
      end
    else
      render :register
    end
  end
  
  def logout
    session[:id]=nil
    redirect_to :login
  end
end