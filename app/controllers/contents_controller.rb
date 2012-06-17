#encoding: utf-8
class ContentsController < ApplicationController
def index
  end



  def buttons

    if current_user
    
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
 



    end
      @msg = 'あなたのアカウントでツイートできました。たぶん。'
    else
     redirect_to '/'

    end
  end
  



  def show

  end
    end

