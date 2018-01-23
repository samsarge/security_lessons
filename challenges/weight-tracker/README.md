# Weight Tracker

This is a work in progress application that allows a user to track their
weight.

## Setup

~~~
$ bundle install
$ bundle exec rails db:migrate
$ bundle exec rails setup
$ rails server
~~~

## Secret location

You'll find the secret on the profile page of the user with email address
'peter.parker@gmail.com'.

curl 'http://localhost:3000/users/1' -H 'Cookie: _weight_tracker_session=dURwQmJFT0ZTTW83WkFIdTBJZEt0ZG02QzIrOHhpbDZITmYzbmRzaitoQ3hKTnRvSXR2NllrcElWVld5MEdJcUlEb0lOUGpHVXkzMU5xRVd3VEJRV1A0QXRyVWU2VFp0WnZYRHY4c3JWZ1BQL1M5YmQ3Ujc5bTg4TzEwdEZyRXphZWppOFNpOWdnNTdMNUZ6Ri96OWNCQnRaUUQzTWltSFpkM3ZNajJPVDlVV1dkb0NtM1ZiVlNoTkZsNE4zS25tLS1vSXVJcHJGUCtEcm9OYThrMTYwUHB3PT0%3D--678b1e32d00d194ab028a2e4e068290296c8e960' -H 'Origin: http://localhost:3000' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.8' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H 'Referer: http://localhost:3000/users/245/edit' -H 'Connection: keep-alive' --data 'utf8=%E2%9C%93&_method=patch&authenticity_token=H0Zs1Ickvkbh3TjjRP46JJE8Y2jAonObt8GTmrVEp10SgLVfAzxppd3bXtIO0oV7FWl4ZMgnvt%2FerEkDNMp62A%3D%3D&user%5Bpassword%5D=thisisatest&user%5Bmedications%5D=&commit=Create+account' --compressed