FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.3

RUN gem install benchtool --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["benchtool"]
CMD ["--help"]
