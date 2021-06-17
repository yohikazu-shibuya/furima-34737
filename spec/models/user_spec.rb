require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it '全ての情報が存在すれば登録できる' do
      expect(@user).to be_valid
    end
    it 'nicknameが空では登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
    end
    it 'emailが空では登録できない' do
    end
    it 'passwordが空では登録できない' do
    end
    it 'passwordが存在してもpassword_confirmationが空では登録できない' do
    end
    it '名前の漢字が空では登録できない' do
    end
    it '名前の読みカナが空では登録できない' do
    end
    it '生年月日が空では登録ができない' do
    end
    it '重複したemailが存在する場合登録できない' do
    end
    it 'passwordが5文字以下では登録できない' do
    end
  end
end
