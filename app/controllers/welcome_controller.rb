class WelcomeController < ApplicationController
  def index
    flash[:notice] = "你好！欢迎来到火龙果园！"
  end
end
