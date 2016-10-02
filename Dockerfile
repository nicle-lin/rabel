#FROM ruby:2.2-alpine
FROM ruby:2.2


ENV RABEL_HOME /rabel
RUN mkdir $RABEL_HOME
WORKDIR $RABEL_HOME

ADD . $RABEL_HOME
#ADD make  /usr/bin/
#RUN gem install vendor/cache/json-1.8.2.gem 
#RUN bundle install
#RUN gem sources --add http://gems.ruby-china.org/
#RUN gem sources --remove https://rubygems.org/
#RUN gem install vendor/cache/*.gem
#RUN gem install i18n -v '0.7.0'
RUN bundle install --without development test
#RUN bundle db:create
#RUN 
EXPOSE 3000
CMD [ "/bin/bash","run.sh" ]
