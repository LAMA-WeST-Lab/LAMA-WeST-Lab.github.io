# start with official ruby docker image as base
FROM ruby:3.1.2

# set working directory within container
WORKDIR /usr/src/app

# copy Ruby & Python requirements first for caching
COPY Gemfile Gemfile.lock _cite/requirements.txt ./

# install Ruby packages
RUN VERSION=$(grep -A 1 'BUNDLED WITH' Gemfile.lock | tail -n 1 | xargs); \
    gem install bundler --version ${VERSION} && \
    bundle _${VERSION}_ install

# install Python
RUN apt update && apt install -y python3 python3-pip

# install Python packages
RUN python3 -m pip install --no-cache-dir --upgrade --requirement requirements.txt
RUN pip install "watchdog[watchmedo]==3.0.0"

# copy the entire website into container
COPY . .

# copy entrypoint script, fix line endings and make executable
COPY .docker/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN sed -i 's/\r$//' /usr/local/bin/entrypoint.sh && chmod +x /usr/local/bin/entrypoint.sh

# expose Jekyll ports
EXPOSE 4000
EXPOSE 35729

# run the entrypoint
CMD ["/usr/local/bin/entrypoint.sh"]