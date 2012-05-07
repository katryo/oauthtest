class EntriesController < ApplicationController
  skip_before_filter :immigration

   def authorize
    #OAuthする
    auth = request.env["omniauth.auth"]
    Twitter.configure do |config|
      config.oauth_token = auth['credentials']['token']
      config.oauth_token_secret = auth['credentials']['secret']
    end
    redirect_to '/contents', :action=>'buttons'
  end

  # GET /entries
  # GET /entries.json
  def index
     end
end
