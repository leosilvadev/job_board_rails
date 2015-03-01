class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale
  
  rescue_from SlugNotFoundError, :with => :redirect_to_right_slug

  private
  def redirect_to_right_slug(error)
    puts error.slug
    redirect_to error.slug
  end
  
  def current_company
    @current_company ||= if session[:company_id]
      Company.find_by_id(session[:company_id])
    end
  end

  def set_locale
    locale = params[:locale] || cookies[:locale]
    if locale.present?
      I18n.locale = locale
      cookies[:locale] = { value: locale, expires: 30.days.from_now}
    end
  end

  helper_method :current_company
end
