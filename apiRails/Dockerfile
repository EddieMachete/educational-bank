# this is the file that will be referenced every time we use the build command on the command-line.

FROM ruby:2.6.9-slim

# build-essential is a package of trusted compilers for our application.
# libpq-dev is a compiler system to help with port forwarding to databases from virtual machines. A detailed explanation is in the link.
# nodejs is a javascript engine that will enable you to run javascript outside of a browser.
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs libsqlite3-dev

# now we want to ADD the current directory to the application directory after that is installed like so.
ADD . /api-rails
WORKDIR /api-rails

# Configure an entry point, so we don't need to specify
# "bundle exec" for each of our commands.
# ENTRYPOINT ["bundle", "exec"]

# Add all rails dependencies
RUN bundle install

EXPOSE 3000

# CMD ["bash"]
CMD ["rails", "server", "-b", "0.0.0.0"]
