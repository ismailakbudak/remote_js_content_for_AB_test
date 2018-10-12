# RemoteContent

In this application I tried to add some html content to another app with js to use A/B testing. I've split traffic coming to website according to options.
You can look demo applications.

Here is the js sender server:
[First variant](https://sender-js-server.herokuapp.com/js_content.js?first_hash=1)
```ruby
{ cats: 5, dogs: 1, mice: 1 }
```
[Second variant](https://sender-js-server.herokuapp.com/js_content.js)
```ruby
{ panda: 1, bear: 1, ola: 1 }
```
Here is the example client:
[Client](https://receiver-client-server.herokuapp.com/)

# Local development
- run following commands on terminal
➜ ✗ bundle install
➜ ✗ bundle exec rails s
- open in your browser localhost:3000 or lvh.me:3000
