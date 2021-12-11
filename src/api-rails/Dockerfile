# this is the file that will be referenced every time we use the build command on the command-line.

FROM ruby:2.5.1 

# build-essential is a package of trusted compilers for our application.
# libpq-dev is a compiler system to help with port forwarding to databases from virtual machines. A detailed explanation is in the link.
# nodejs is a javascript engine that will enable you to run javascript outside of a browser.
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /api-rails
WORKDIR /src/api-rails

ADD Gemfile /src/api-rails/Gemfile
ADD Gemfile.lock /src/api-rails/Gemfile.lock

# Add all rails dependencies
RUN bundle install

# now we want to ADD the current directory to the application directory after that is installed like so.
ADD . /api-rails
