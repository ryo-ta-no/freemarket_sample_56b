class RagistrationsController < ApplicationController

  def member
    @user = User.new
  end

  def authentication
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:first_name] = user_params[:first_name]
    session[:last_name] = user_params[:last_name]
    session[:first_kana] = user_params[:first_kana]
    session[:last_kana] = user_params[:last_kana]
    session[:birth_day] = user_params['birth_day(1i)'] + "-" + user_params['birth_day(2i)'] + "-" + user_params['birth_day(3i)']
    @user = User.new

  end

  def address
    session[:call_number] = user_params[:call_number]
    @user = User.new
    @street = Street.new
  end

  def payment
    session[:first_name] = user_params[:first_name]
    session[:last_name] = user_params[:last_name]
    session[:first_kana] = user_params[:first_kana]
    session[:last_kana] = user_params[:last_kana]
    session[:post] = street_params[:post]
    session[:city] = street_params[:city]
    session[:address] = street_params[:address]
    session[:bilding] = street_params[:binlding]
    session[:phone] = street_params[:phone]
  end

  def complete
    ragistration User.find(session[:id]) unless user_signed_in?
  end


  def create
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      first_name: session[:first_name],
      last_name: session[:last_name],
      first_kana: session[:first_kana],
      last_kana: session[:last_kana],
      call_number: session[:call_number],
      birth_day: session[:birth_day],
    )
    @street = Street.new(
      post: session[:post],
      city: session[:city],
      address: session[:address],
      bilding: session[:bilding],
      phone: session[:phone]
    )
    binding.pry
    if @user.save
      session[:id] = @user.id
      redirect_to payment_ragistrations_path
    end
  end


  private

  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :password_confirmation,
      :first_name,
      :last_name,
      :first_kana,
      :last_kana,
      :call_number,
      :birth_day,
      street_attributes: [:post, :city, :address, :bilding, :phone]
    )
  end

end
