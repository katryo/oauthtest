#encoding: utf-8
class ContentsController < ApplicationController
  def index
  end


  #https://github.com/ryonext/TwitRL/blob/master/app/controllers/list_controller.rbからとってきた
  def authorize
    #OAuthする
    auth = request.env["omniauth.auth"]
    Twitter.configure do |config|
      config.oauth_token = auth['credentials']['token']
      config.oauth_token_secret = auth['credentials']['secret']
    end
    redirect_to :action=>'buttons'
  end

  def form_tag 
    #render :text => "helloooooooo!"
# Twitter.update("testtest", options={}) 
  end

  def buttons
    @msg = 'Helllllllllo'
   Twitter.update("もっかいてすと") 
  end
end
