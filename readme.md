= LogViewer

To use this log viewer 
mount this application in your app like
```ruby
	Rails.application.routes.draw do
	  mount LogViewer::Engine => "/log_viewer"
	end
```