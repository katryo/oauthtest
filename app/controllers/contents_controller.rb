#encoding: utf-8
class ContentsController < ApplicationController
#before_filter :gate
 # skip_before_filter :gate, only: [:authorize, :index]
def index
  reset_session
  end


  #https://github.com/ryonext/TwitRL/blob/master/app/controllers/list_controller.rbからとってきた
  def authorize

    @passport = true
    #OAuthする
    auth = request.env["omniauth.auth"]
    Twitter.configure do |config|
      config.oauth_token = auth['credentials']['token']
      config.oauth_token_secret = auth['credentials']['secret']
    end
    
    @passport = true

    redirect_to :action=>'buttons'
  end

  def buttons

     #if config.oauth_token_secret == nil
      #redirect_to "/"
     
    
      @user = Twitter.user.screen_name
      @random_number = Time.now.sec % 4
    if params[:button_1]

       if @random_number == 2 
         Twitter.update("にせほー！　にせほー！　そこにいるの？おしいー！　おしいー！　明日があるの！　3分間＼ハイ！／リプライを＼ハイ！／か・ぞ・え・て・たー＼人☆工☆知☆能☆／＼( ゜ヮ゜)＞＼(゜ヮ゜)／ ＼(゜ヮ゜)／ ＜(゜ヮ＾ )／ #にせほボタン http://nisehobutton.heroku.com/")
       else
        Twitter.update("@nisehorn @nisehorrn @nisehorrrn @nisehorrrrn にせほー #にせほボタン http://nisehobutton.heroku.com/") 
      end
    session[:button_pushed_1] = true

    elsif params[:button_2]
      if @random_number == 3
      Twitter.update("ロックスターはオワコン。時代はレッドブル #にせほボタン http://nisehobutton.heroku.com/")
      else
      Twitter.update("ロックスター・エナジードリンクなう #にせほボタン http://nisehobutton.heroku.com/")
      end

  session[:button_pushed_2] = true
    elsif params[:button_3] 
      Twitter.update("ゆ #にせほボタン http://nisehobutton.heroku.com/") 
    session[:button_pushed_3] = true
    elsif params[:button_4]
      Twitter.update("#zekitterは神 #にせほボタン http://nisehobutton.heroku.com/") 
    session[:button_pushed_4] = true
elsif params[:button_5]
      Twitter.update("アイエエエ！？　ニンジャ！？　ニンジャナンデ！？ #にせほボタン http://nisehobutton.heroku.com/") 
    session[:button_pushed_5] = true
 
      elsif params[:button_6]
      Twitter.update("たいぷかのんほー #にせほボタン http://nisehobutton.heroku.com/") 
    session[:button_pushed_6] = true
 

   # @button_pushed_4 = true 

    else
      #Twitter.update("アイエエエ！？") 
    end
      @msg = 'あなたのアカウントでツイートできました。たぶん。'
    #if button_number = 0
    #  Twitter.update("もっかいてすと") 
    end
  



  def edit_individual
   @products = 0 
  end

  def show

  end

  private

  def gate
    if @passport == nil
      redirect_to "/"

  end
end
end
