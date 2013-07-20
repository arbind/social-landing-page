class TwitterUser
  include Mongoid::Document
  include Mongoid::Timestamps

  field :twitter_id
  field :token
  field :secret
  field :name
  field :image
  field :screen_name
  field :address
  field :description
  field :twitter_account_created_at

  index({twitter_id: 1}, { unique: true, sparse: true })
end