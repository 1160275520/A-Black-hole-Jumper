Rails.application.routes.draw do
   root "welcome#index"
   get "/capetown", to: 'menu#capetown'
   get "/nepal", to: 'menu#nepal'
   get "/snowmountain", to: 'menu#snowmountain'
   get "/apuausangate", to: 'menu#apuausangate'
   get "/machupicchu", to: 'menu#machupicchu'
   get "/video", to: 'menu#video'
   get "/about", to: 'menu#about'
   get "/postcard", to: 'menu#postcard'
   get "/project", to: 'menu#project'

   resources :pictures
end
