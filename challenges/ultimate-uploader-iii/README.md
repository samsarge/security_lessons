  # Ultimate Uploader III

Same app as the previous challenge, only this time the secret isn't in the
session.

## Setup

~~~bash
$ bundle install
$ rails server
~~~

## Secret location

The application will display the secret prominently if your session hash
contains `:show_secret => true`. Craft, encrypt and sign a session cookie with
this payload and make the application load your session to obtain the secret.

<!-- 
UltimateUploader::Application.config.secret_key_base = '33039b5229a2065e62b424bdefb1ee1f70389a1dd4ae145e350cacac7a33348770b387ab5189a095a78d284405428f5deb6b02d38d11adcc91a0dde39848bf7a'
-->