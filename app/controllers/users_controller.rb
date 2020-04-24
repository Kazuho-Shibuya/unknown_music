class UsersController < ApplicationController
  def show
    # Usersコントローラにリクエストが正常に送信されると、params[:id]の部分はユーザーidの1に置き換わる
    # id: '1'は /users/:idから取得した値
    # それによってid=1のユーザーを検索できる
    @user = User.find(params[:id])
  end

  def new
    # form_forで必要なUserオブジェクトの作成
    @user = User.new
  end
end
