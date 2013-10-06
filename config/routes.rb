LogViewer::Engine.routes.draw do
  get "log/view"
  root to: "log#view"
end
