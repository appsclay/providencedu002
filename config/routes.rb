Rails.application.routes.draw do
  resources :capsule_learners
  resources :capsule_classes do
    resources :free_study_materials
  end
  resources :learners
  resources :courses do
    resources :fee_structures
  end
  resources :pm_headings
  resources :testimonials
  resources :logo_texts
  resources :menu_items
  resources :corporate_trainer_headings
  resources :corporate_trainers
  resources :pm_logos
  resources :pm_texts
  resources :banner_sections
  resources :positions do
    resources :requirement_categories
  end
  resources :carrer_pages
  resources :policy_hedings do
    resources :policy_sub_hedings
  end
  resources :term_pages
  resources :contact_pages
  resources :teams
  root 'home#index'
  get '/about', to: 'home#about_us', as: 'about'
  get '/contact', to: 'home#contact_us', as: 'contact'
  get '/privacy_policy', to: 'home#privicy_policy', as: 'privacy_policy'  
  get '/terms', to: 'home#t_c', as: 'terms' 
  get 'home/custom'
  post 'home/custom'
  get '/careers', to: 'home#career', as: 'careers'
  get '/admin', to: 'dash#index', as: 'admin'
 
  get '/all_courses', to: 'home#all_courses', as: 'all_courses'
  get '/all_trainers', to: 'home#all_trainers', as: 'all_trainers'
  get '/free_capsule_classes', to: 'home#free_capsule_classes', as: 'free_capsule_classes'
  devise_for :users, :controllers => { :registrations => "registrations" } 
  resources :about_pages
  
  #routes
end

