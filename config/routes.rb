SocialLandingPage::Application.routes.draw do
  root  'root#signup'

  get   'signup'                    => 'root#signup'        , as: :signup
  get   'signout'                   => 'root#signout'       , as: :signout
  get   '/auth/:provider/callback'  => 'root#oauth_sign_in'

  get 'ping'                        => 'root#ping'          , as: :ping
  get 'privacy_policy'              => 'root#privacy_policy', as: :privacy_policy
  get 'dashboard'                   => 'dashboard#show'     , as: :dashboard

end