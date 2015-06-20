FROM debian
MAINTAINER Kel Cecil

USER root
# Notice the -y for apt-get install 
RUN apt-get update && apt-get install -y curl procps

COPY ./install-ruby-2.1.sh /tmp/install-ruby-2.1.sh
COPY ./ruby-app/ /usr/local/app/
RUN chown -R www-data /usr/local/app/

RUN /tmp/install-ruby-2.1.sh
RUN gpasswd -a www-data rvm

USER www-data
WORKDIR /usr/local/app
RUN /usr/local/rvm/wrappers/default/gem install bundler && \
	 /usr/local/rvm/wrappers/default/bundle install
CMD /usr/local/rvm/wrappers/default/ruby chuck.rb
