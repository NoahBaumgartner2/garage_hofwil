class ContactMailer < ApplicationMailer
  def contact_form(name:, email:, telefon:, leistung:, bemerkung:)
    @name     = name
    @email    = email
    @telefon  = telefon
    @leistung = leistung.presence || "Nicht angegeben"
    @bemerkung = bemerkung.presence || "Keine Bemerkung"

    mail(
      to:       "info@garage-hofwil.ch",
      reply_to: email,
      subject:  "Neue Anfrage: #{@leistung} – #{name}"
    )
  end
end
