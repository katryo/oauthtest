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
      @user = Twitter.user.screen_name
      @random_number = Time.now.sec % 4
    if params[:button_1]
      if @random_number = 0 
         Twitter.update("にせほー！にせほー！そこにいるの？おしいー！おしいー！明日があるの！ 3分間＼ハイ！／リプライを＼ハイ！／か・ぞ・え・て・たー＼人☆工☆知☆能☆／＼( ゜ヮ゜)＞＼(゜ヮ゜)／ ＼(゜ヮ゜)／ ＜(゜ヮ＾ )／")
      elsif
        Twitter.update("@nisehorn @nisehorrrn @nisehorrrrn にせほー") 
      end
    
    elsif params[:button_2]
      if @random_number = 0 
      Twitter.update("ロックスターはオワコン。時代はレッドブル")
      elsif
      Twitter.update("ロックスター・エナジードリンクなう")
      end
    elsif params[:button_3] 
      Twitter.update("ゆ") 
    elsif params[:button_4]
      Twitter.update("#zekitterは神") 
    elsif params[:button_5]
      Twitter.update("宣伝〜〜") 

    else
      #Twitter.update("アイエエエ！？") 
    end
      @msg = 'あなたのアカウントでツイートできました。たぶん。'
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
