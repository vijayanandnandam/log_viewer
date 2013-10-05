Rails.application.routes.draw do

  mount LogViewer::Engine => "/log_viewer"
end
