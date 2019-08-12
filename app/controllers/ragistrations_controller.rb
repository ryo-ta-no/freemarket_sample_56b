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
  end

  def payment
    session[:first_name] = user_params[:first_name]
    session[:last_name] = user_params[:last_name]
    session[:first_kana] = user_params[:first_kana]
    session[:last_kana] = user_params[:last_kana]
    session[:post] = user_params[:post]
    session[:pretectures] = user_params[:pretectures]
    session[:city] = user_params[:city]
    session[:bilding] = user_params[:bilding]
    session[:phone] = user_params[:phone]
    @user = User.new
  end

  def complete
    # session[:card_number] = user_params[:card_number]
    # session[:expirationdate_year] = user_params[:expirationdate_year]
    # session[:expirationdate_mouth] = user_params[:expirationdate_mouth]
    # session[:card_name] = user_params[:card_name]
    # session[:security_card] = user_params[:security_card]
    # binding.pry
    # @user = User.new
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
      post: session[:post],
      pretectures: session[:pretectures],
      city: session[:city],
      address: session[:address],
      bilding: session[:bilding],
      phone: session[:phone],
      card_number: session[:card_number],
      expirationdate_year: session[:expirationdate_year],
      expirationdate_mouth: session[:expirationdate_mouth],
      card_name: session[:card_name],
      security_card: session[:security_card]
    )
    if @user.save
      session[:id] = @user.id
      redirect_to complete_root_path
    else
      render '/signup/registration'
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
      :authentication_number,
      :post,
      :pretectures,
      :city,
      :address,
      :bilding,
      :phone,
      :card_number,
      :expirationdate_year,
      :expirationdate_mouth,
      :card_name,
      :security_card
    )
  end
end
