FROM ruby:3.4.4-slim

# Essentielle Pakete für Rails, Postgres und Tailwind installieren
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libpq-dev pkg-config curl libyaml-dev && \
    curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install --no-install-recommends -y nodejs && \
    npm install -g @anthropic-ai/claude-code

# Arbeitsverzeichnis festlegen
WORKDIR /rails

# Gems installieren (wir kopieren sie später rein)
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Den restlichen Code kopieren
COPY . .

# Entrypoint vorbereiten (verhindert Fehler durch alte server.pid Dateien)
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Port freigeben
EXPOSE 3000