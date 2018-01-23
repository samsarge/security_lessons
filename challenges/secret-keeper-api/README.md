# Secret Keeper

This web application is designed to hold a secret block of content for each
user. The authorisation vulnerability from `secret-keeper` has been fixed.

The owners of this application have decided to move to a microservices
architecture. This application will be responsible for storing users and
secrets. It will provide an API for other internal application to read user and
secret data.

It currently exposes two API end points:

```
/api/users.json
/api/secrets.json
```

This is a relatively easy exercise and shouldn't take you longer than **30
minutes** to complete.

## Setup

~~~bash
$ bundle install
$ bundle exec rails db:migrate
$ bundle exec rails setup
$ rails server
~~~

## Secret Location

In this app, the secret is is the secret for the user with the name 'Luke Cage',
with email address 'luke@hellskitchen.com'.
