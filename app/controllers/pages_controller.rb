class PagesController < ApplicationController
  def home; end
  def leistungen; end
  def kauf_verkauf; end
  def kontakt; end
  def impressum; end
  def datenschutz; end

  def contact_submit
    ContactMailer.contact_form(
      name:      params[:name],
      email:     params[:email],
      telefon:   params[:telefon],
      leistung:  params[:leistung],
      bemerkung: params[:bemerkung]
    ).deliver_now
    redirect_to kontakt_path, notice: "Vielen Dank! Ihre Nachricht wurde übermittelt. Wir melden uns so schnell wie möglich bei Ihnen."
  rescue => e
    Rails.logger.error "Mail delivery failed: #{e.message}"
    redirect_to kontakt_path, notice: "Vielen Dank! Ihre Nachricht wurde empfangen. Wir melden uns bei Ihnen."
  end
end
