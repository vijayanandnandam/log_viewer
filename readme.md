LogViewer
==================================

To use this log viewer 
add gem to your Gem file like
```ruby
gem 'log_viewer', :git => 'git://github.com/vijay-cybrilla/log_viewer.git'
```
then run

```ruby
bundle install
``` 

and modfiy your routes.rb file to mount logviewer in your app

```ruby
Rails.application.routes.draw do
  mount LogViewer::Engine => "/log_viewer"
end
```

Now the log viewer will be available at path `/log_viewer`