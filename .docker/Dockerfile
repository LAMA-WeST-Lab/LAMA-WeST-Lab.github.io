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

# install pip (python3 already ships in the base image; Debian 11's python3-pip
# package can no longer be fetched since bullseye moved to LTS)
RUN curl -sSL https://bootstrap.pypa.io/pip/3.9/get-pip.py -o /tmp/get-pip.py && \
    python3 /tmp/get-pip.py && \
    rm /tmp/get-pip.py

# install Python packages
RUN python3 -m pip install --no-cache-dir --upgrade --requirement requirements.txt
RUN python3 -m pip install --no-cache-dir "watchdog[watchmedo]==3.0.0"

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
