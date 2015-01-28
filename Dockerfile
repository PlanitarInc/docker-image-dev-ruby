FROM planitar/dev-base

USER root
WORKDIR /

# Install ruby1.9 and gems1.8, then replace gems1.8 with latest one
# XXX: updating gems not using `dpkg` is wrong, we can live with it
RUN apt-get install -y ruby ruby-dev zlib1g-dev && apt-get clean && \
    gem install rubygems-update --no-rdoc --no-ri && \
    update_rubygems --no-document && \
    gem install nokogiri
