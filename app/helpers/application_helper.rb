module ApplicationHelper

	def currency(money)
		number_to_currency(money.exchange_to(params[:currency]), locale: I18n.locale)
	end
end
