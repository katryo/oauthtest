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

  def push
      Twitter.update("form_tagテスト") 
# Twitter.update("testtest", options={}) 
  end

  def buttons
    if params[:button_1] 
      @msg = 'button_1'
    elsif params[:button_2]
      @msg = 'bottun_2'
    elsif params[:button_3] 
      @msg = 'button_3'
    elsif params[:button_4]
      @msg = 'bottun_4'
    else
      #Twitter.update("アイエエエ！？") 
    end
    #if button_number = 0
    #  Twitter.update("もっかいてすと") 
   # end
  end

  def edit_individual
   @products = 0 
  end

  def show

  end
end
