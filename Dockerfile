FROM ruby:latest
MAINTAINER John Slee <indigoid@gmail.com>
EXPOSE 4567
RUN mkdir /usr/src/app 
ADD . /usr/src/app/ 
WORKDIR /usr/src/app/ 
RUN bundle install --system
ENV PINTEREST_API_TOKEN=invalid-token
CMD ["./exe/pinsearch"]
