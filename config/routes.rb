# == Route Map
#
#                                Prefix Verb       URI Pattern                                                                              Controller#Action
#                             presences GET        /presences(.:format)                                                                     presences#index
#                                       POST       /presences(.:format)                                                                     presences#create
#                          new_presence GET        /presences/new(.:format)                                                                 presences#new
#                         edit_presence GET        /presences/:id/edit(.:format)                                                            presences#edit
#                              presence GET        /presences/:id(.:format)                                                                 presences#show
#                                       PATCH      /presences/:id(.:format)                                                                 presences#update
#                                       PUT        /presences/:id(.:format)                                                                 presences#update
#                                       DELETE     /presences/:id(.:format)                                                                 presences#destroy
#                new_admin_user_session GET        /admin/login(.:format)                                                                   active_admin/devise/sessions#new
#                    admin_user_session POST       /admin/login(.:format)                                                                   active_admin/devise/sessions#create
#            destroy_admin_user_session DELETE|GET /admin/logout(.:format)                                                                  active_admin/devise/sessions#destroy
#               new_admin_user_password GET        /admin/password/new(.:format)                                                            active_admin/devise/passwords#new
#              edit_admin_user_password GET        /admin/password/edit(.:format)                                                           active_admin/devise/passwords#edit
#                   admin_user_password PATCH      /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                       PUT        /admin/password(.:format)                                                                active_admin/devise/passwords#update
#                                       POST       /admin/password(.:format)                                                                active_admin/devise/passwords#create
#                            admin_root GET        /admin(.:format)                                                                         admin/dashboard#index
#                       admin_dashboard GET        /admin/dashboard(.:format)                                                               admin/dashboard#index
#        batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)                                                admin/admin_users#batch_action
#                     admin_admin_users GET        /admin/admin_users(.:format)                                                             admin/admin_users#index
#                                       POST       /admin/admin_users(.:format)                                                             admin/admin_users#create
#                  new_admin_admin_user GET        /admin/admin_users/new(.:format)                                                         admin/admin_users#new
#                 edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)                                                    admin/admin_users#edit
#                      admin_admin_user GET        /admin/admin_users/:id(.:format)                                                         admin/admin_users#show
#                                       PATCH      /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                       PUT        /admin/admin_users/:id(.:format)                                                         admin/admin_users#update
#                                       DELETE     /admin/admin_users/:id(.:format)                                                         admin/admin_users#destroy
#            batch_action_admin_reports POST       /admin/reports/batch_action(.:format)                                                    admin/reports#batch_action
#                         admin_reports GET        /admin/reports(.:format)                                                                 admin/reports#index
#                                       POST       /admin/reports(.:format)                                                                 admin/reports#create
#                      new_admin_report GET        /admin/reports/new(.:format)                                                             admin/reports#new
#                     edit_admin_report GET        /admin/reports/:id/edit(.:format)                                                        admin/reports#edit
#                          admin_report GET        /admin/reports/:id(.:format)                                                             admin/reports#show
#                                       PATCH      /admin/reports/:id(.:format)                                                             admin/reports#update
#                                       PUT        /admin/reports/:id(.:format)                                                             admin/reports#update
#                                       DELETE     /admin/reports/:id(.:format)                                                             admin/reports#destroy
#          batch_action_admin_presences POST       /admin/presences/batch_action(.:format)                                                  admin/presences#batch_action
#                       admin_presences GET        /admin/presences(.:format)                                                               admin/presences#index
#                                       POST       /admin/presences(.:format)                                                               admin/presences#create
#                    new_admin_presence GET        /admin/presences/new(.:format)                                                           admin/presences#new
#                   edit_admin_presence GET        /admin/presences/:id/edit(.:format)                                                      admin/presences#edit
#                        admin_presence GET        /admin/presences/:id(.:format)                                                           admin/presences#show
#                                       PATCH      /admin/presences/:id(.:format)                                                           admin/presences#update
#                                       PUT        /admin/presences/:id(.:format)                                                           admin/presences#update
#                                       DELETE     /admin/presences/:id(.:format)                                                           admin/presences#destroy
#             batch_action_admin_majors POST       /admin/majors/batch_action(.:format)                                                     admin/majors#batch_action
#                          admin_majors GET        /admin/majors(.:format)                                                                  admin/majors#index
#                                       POST       /admin/majors(.:format)                                                                  admin/majors#create
#                       new_admin_major GET        /admin/majors/new(.:format)                                                              admin/majors#new
#                      edit_admin_major GET        /admin/majors/:id/edit(.:format)                                                         admin/majors#edit
#                           admin_major GET        /admin/majors/:id(.:format)                                                              admin/majors#show
#                                       PATCH      /admin/majors/:id(.:format)                                                              admin/majors#update
#                                       PUT        /admin/majors/:id(.:format)                                                              admin/majors#update
#                                       DELETE     /admin/majors/:id(.:format)                                                              admin/majors#destroy
#           batch_action_admin_students POST       /admin/students/batch_action(.:format)                                                   admin/students#batch_action
#                        admin_students GET        /admin/students(.:format)                                                                admin/students#index
#                                       POST       /admin/students(.:format)                                                                admin/students#create
#                     new_admin_student GET        /admin/students/new(.:format)                                                            admin/students#new
#                    edit_admin_student GET        /admin/students/:id/edit(.:format)                                                       admin/students#edit
#                         admin_student GET        /admin/students/:id(.:format)                                                            admin/students#show
#                                       PATCH      /admin/students/:id(.:format)                                                            admin/students#update
#                                       PUT        /admin/students/:id(.:format)                                                            admin/students#update
#                                       DELETE     /admin/students/:id(.:format)                                                            admin/students#destroy
#                        admin_comments GET        /admin/comments(.:format)                                                                admin/comments#index
#                                       POST       /admin/comments(.:format)                                                                admin/comments#create
#                         admin_comment GET        /admin/comments/:id(.:format)                                                            admin/comments#show
#                                       DELETE     /admin/comments/:id(.:format)                                                            admin/comments#destroy
#                               reports GET        /reports(.:format)                                                                       reports#index
#                                       POST       /reports(.:format)                                                                       reports#create
#                            new_report GET        /reports/new(.:format)                                                                   reports#new
#                           edit_report GET        /reports/:id/edit(.:format)                                                              reports#edit
#                                report GET        /reports/:id(.:format)                                                                   reports#show
#                                       PATCH      /reports/:id(.:format)                                                                   reports#update
#                                       PUT        /reports/:id(.:format)                                                                   reports#update
#                                       DELETE     /reports/:id(.:format)                                                                   reports#destroy
#                                majors GET        /majors(.:format)                                                                        majors#index
#                                       POST       /majors(.:format)                                                                        majors#create
#                             new_major GET        /majors/new(.:format)                                                                    majors#new
#                            edit_major GET        /majors/:id/edit(.:format)                                                               majors#edit
#                                 major GET        /majors/:id(.:format)                                                                    majors#show
#                                       PATCH      /majors/:id(.:format)                                                                    majors#update
#                                       PUT        /majors/:id(.:format)                                                                    majors#update
#                                       DELETE     /majors/:id(.:format)                                                                    majors#destroy
#                   new_student_session GET        /students/sign_in(.:format)                                                              students/sessions#new
#                       student_session POST       /students/sign_in(.:format)                                                              students/sessions#create
#               destroy_student_session DELETE     /students/sign_out(.:format)                                                             students/sessions#destroy
#                  new_student_password GET        /students/password/new(.:format)                                                         devise/passwords#new
#                 edit_student_password GET        /students/password/edit(.:format)                                                        devise/passwords#edit
#                      student_password PATCH      /students/password(.:format)                                                             devise/passwords#update
#                                       PUT        /students/password(.:format)                                                             devise/passwords#update
#                                       POST       /students/password(.:format)                                                             devise/passwords#create
#           cancel_student_registration GET        /students/cancel(.:format)                                                               students/registrations#cancel
#              new_student_registration GET        /students/sign_up(.:format)                                                              students/registrations#new
#             edit_student_registration GET        /students/edit(.:format)                                                                 students/registrations#edit
#                  student_registration PATCH      /students(.:format)                                                                      students/registrations#update
#                                       PUT        /students(.:format)                                                                      students/registrations#update
#                                       DELETE     /students(.:format)                                                                      students/registrations#destroy
#                                       POST       /students(.:format)                                                                      students/registrations#create
#                               sign_in GET        /sign_in(.:format)                                                                       devise/sessions#new
#                     students_sign_out GET        /students/sign_out(.:format)                                                             devise/sessions#destroy
#                       homes_myprofile GET        /homes/myprofile(.:format)                                                               homes#myprofile
#                                 homes GET        /homes(.:format)                                                                         homes#index
#                                       POST       /homes(.:format)                                                                         homes#create
#                              new_home GET        /homes/new(.:format)                                                                     homes#new
#                             edit_home GET        /homes/:id/edit(.:format)                                                                homes#edit
#                                  home GET        /homes/:id(.:format)                                                                     homes#show
#                                       PATCH      /homes/:id(.:format)                                                                     homes#update
#                                       PUT        /homes/:id(.:format)                                                                     homes#update
#                                       DELETE     /homes/:id(.:format)                                                                     homes#destroy
#                                  root GET        /                                                                                        homes#index
#         rails_mandrill_inbound_emails POST       /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#         rails_postmark_inbound_emails POST       /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST       /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST       /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#          rails_mailgun_inbound_emails POST       /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET        /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST       /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH      /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT        /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE     /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST       /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET        /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET        /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET        /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT        /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST       /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :presences
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :reports
  resources :majors
  devise_for :students, controllers: { sessions: 'students/sessions', registrations: "students/registrations" }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get '/students/sign_out' => 'devise/sessions#destroy'
  end
  get 'homes/myprofile' => 'homes/myprofile'
  post 'homes/update' => 'homes/update'

  resources :homes
  root to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
