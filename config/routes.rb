SocialLandingPage::Application.routes.draw do
  root 'root#signup'
  get 'signup'  => 'root#signup'  , as: :signup
end