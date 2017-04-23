# Pinsearch

Trivial Sinatra app to search only *your own* Pinterest content.

## Installation

    $ gem install pinsearch

## Usage

### Get a Pinterest API token

Go [hither](https://developers.pinterest.com/tools/access_token/) and generate an API token.

Make sure you only grant the `read_public` privilege!

### Put the API token in your environment

    $ export PINTEREST_API_TOKEN=your_pinterest_token

### Set a username and password in the environment also

This is rather important if you're going to make the interface available on the public internet. If you do that, make sure you also use HTTPS to protect the authentication!

    $ export PINSEARCH_AUTH_USER=pinsearch
    $ export PINSEARCH_AUTH_PASSWORD="choose a good password because it is 2017"
    
### Start the `pinsearch` webserver

    $ pinsearch

### In your browser

Access the `pinsearch` webserver [at localhost:4567](http://localhost:4567).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/indigoid/pinsearch.

## License

Copyright 2017 John Slee.

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

