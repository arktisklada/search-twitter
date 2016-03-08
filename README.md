# Search Twitter!

A [Ruby on Rails][ror] application that demonstrates how to use the [Sign in
with Twitter][siwt] workflow using the [twitter gem][twitter] and [OmniAuth][]
to search Twitter for popular tweets and users

[ror]: http://rubyonrails.org/
[siwt]: https://dev.twitter.com/docs/auth/sign-twitter
[twitter]: https://rubygems.org/gems/twitter
[omniauth]: https://rubygems.org/gems/omniauth

## Installation

    git clone git://github.com/arktisklada/search-twitter.git
    cd search-twitter
    bundle install

## Usage
Sign in with Twitter requires you to [register an app with Twitter][apps] to
obtain OAuth credentials. Once you obtain credentials, substitute your consumer
key and secret into the command below.

Sign in with twitter requires a callback url, otherwise you will see a "401
Unauthorized" error. The callback url can be any url, except localhost.

**Note**: For testing on localhost, use 127.0.0.1 in the callback url

[apps]: http://dev.twitter.com/apps

    CONSUMER_KEY=abc CONSUMER_SECRET=123 rails server

## Copyright
Copyright (c) 2016 Clayton Liggitt. See [LICENSE][] for details.

[license]: https://github.com/arktisklada/search-twitter/blob/master/LICENSE.md
