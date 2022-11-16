require 'rails_helper'


RSpec.describe User, type: :model do
  subject(user) {User.create(email: 'yaboi@gmail.com', password: '123456')}
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it {should validate_length_of:(:password).is_a_least(6)}


  describe "#is_password?" do
    
    it 'should accept an input' do
      expect(user.is_password?(password)).to_not raise_error
    end

    it "should return a bool if it is the user's password or not" do 
      expect(user.is_password?('123456')).to eq(true)
      expect(user.is_password?('123457')).to eq(false)
    end

  end 

  describe '#reset_session_token' do 
    let!(:token) {SecureRandom::urlsafe_base64}
    it "a new session token is generated and saved" do 
      expect(user.session_token).to eq(token)
    end 

  end 

  describe "::find_by_credentials" do 
    it "should accept two argumnets, email and passsword" do 
      expect(User.find_by_credentials(email, passsword)).to_not raise_error
    end 

    it "should return is the user if email and password match" do 
      expect(User.find_by_credentials('yaboi@gmail.com', '123456')).to include(user)
    end 

    it "should return nil if user is not found" do 
      expect(User.find_by_credentials('notyaboi@gmail.com', '123456')).to eq(nil)
    end
  end 
  # pending "add some examples to (or delete) #{__FILE__}"
end
