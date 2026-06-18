Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
  get  "/leistungen"     => "pages#leistungen",     as: :leistungen
  get  "/kauf-verkauf"   => "pages#kauf_verkauf",   as: :kauf_verkauf
  get  "/kontakt"        => "pages#kontakt",         as: :kontakt
  post "/kontakt/senden" => "pages#contact_submit",  as: :contact_submit
  get  "/impressum"      => "pages#impressum",       as: :impressum
  get  "/datenschutz"    => "pages#datenschutz",     as: :datenschutz
end
