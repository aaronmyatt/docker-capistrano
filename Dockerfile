FROM ruby:latest
MAINTAINER aaronmyatt <aaronmyat@gmail.com>

# install capistrano
RUN gem install --no-rdoc --no-ri capistrano && gem install --no-rdoc --no-ri capistrano-rails \
&& gem install --no-rdoc --no-ri capistrano-rbenv \
&& gem install --no-rdoc --no-ri capistrano-rbenv-install \
&& gem install --no-rdoc --no-ri capistrano-safe-deploy-to \
&& gem install --no-rdoc --no-ri capistrano-unicorn-nginx \
&& gem install --no-rdoc --no-ri slackistrano

WORKDIR /source

CMD ["cap"]
