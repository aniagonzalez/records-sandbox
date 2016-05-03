class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_secure_password

  def self.log_in(email, password)
    somebody = find_by(email: email)
    somebody && somebody.authenticate(password)  #will return false if user and password are "bad", will return false if nil and object
  end
end



#find_by(email: email).authenticate(password)  ###if the email is not found it will return nil, and authenticate will not work on nil
