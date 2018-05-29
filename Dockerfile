FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails-annotation-server
WORKDIR /rails-annotation-server
# Copy the Gemfiles and install gems. We copy only these files first so that
# Docker can still use the cached bundle install step, even when other source
# files are changing.
COPY Gemfile /rails-annotation-server/Gemfile
COPY Gemfile.lock /rails-annotation-server/Gemfile.lock
RUN bundle install
# Now add the rest of the files
COPY . /rails-annotation-server

#Set Environemnet Variable
ENV RACK_ENV=development

# Start server
ENV PORT 3000
EXPOSE 3000
CMD ["rails", "server"]
