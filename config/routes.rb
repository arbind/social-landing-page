SocialLandingPage::Application.routes.draw do
  root  'root#signup'
  get   'signup'                    => 'root#signup'        , as: :signup
  get   '/auth/:provider/callback'  => 'root#oauth_sign_in'

  get 'dashboard'                   => 'dashboard#show'     , as: :dashboard

end