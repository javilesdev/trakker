class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    if I18n.locale
    	params[:currency] = 'CLP'.to_s
    else
    	params[:currency] = 'EUR'.to_s
    end
  end

  def default_url_options(options={})
    { locale: I18n.locale }
  end
end
