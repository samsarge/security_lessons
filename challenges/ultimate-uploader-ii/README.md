# Ultimate Uploader II

The exact same app as in the previous challenge, only this time the secret
isn't the `secret_token.rb` file.

## Setup

~~~bash
$ bundle install
$ rails server
~~~

## Secret location

The secret is set as a value in the session. Decrypt the session to obtain the
secret.


UltimateUploader::Application.config.secret_key_base = '8272093d76408d6c3b2d835ba297aefb0c929e6741360114615e7274f8d44896cccf46964cf83831153ba55add87a8a6841ee60328d3427fc76f4f54c81d3f56'