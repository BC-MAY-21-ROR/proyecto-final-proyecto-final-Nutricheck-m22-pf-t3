# frozen_string_literal: true

Rails.application.routes.draw do
  
  devise_for :users
  devise_for :patients, controllers: {
    registrations: 'patients/registrations'
  }
  # devise_for :administrators

  resources :slots

  root 'welcome#home'
  resources :turns
  resources :users
  resources :managers
  resources :administrators
  resources :professionals
  resources :licenses
  resources :specialities
  resources :schedules
  resources :diets
  resources :patients
  resources :cards
  resources :services
  resources :appointments
  get 'in_construction', to: 'managers#in_construction'
  get 'professionals/:id/profile', to: 'professionals#profile'
  get 'slots_professionals', to: 'slots#professionals'
  get 'slots_services', to: 'slots#services'
  get 'slots_reservations/:id/', to: 'slots#reservations', as: 'slot_reservation'
  get 'administrator/dashboard', to: 'administrators#dashboard', as: 'administrator_dashboard'
  get 'manager/dashboard', to: 'managers#dashboard', as: 'manager_dashboard'
  get 'patient/dashboard', to: 'patients#dashboard', as: 'patient_dashboard'
end
