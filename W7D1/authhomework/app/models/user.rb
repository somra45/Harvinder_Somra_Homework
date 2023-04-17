class User < ApplicationRecord

    attr_reader :password

    def initialize(password)
        super()
        @password = password
    end
    
    validate :ensure_session_token
    validates :username, presence: true
    validates :password_digest, presence: true, error: 'Password cannot be blank'
    validates :password_digest, length: { minimum: 8 }, allow_nil: true
    

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)

        if user
            return user if is_password?(password)
        else
            nil
        end
    end

    def is_password?(password)
        password == self.password_digest
    end

    def generate_unique_session_token
        return SecureRandom::urlsafe_base64
    end

    def password=(password)
        password_digest = Bcrypt::Password.create(password)
        @password = password
    end

    def reset_session_token!
        self.session_token = generate_unique_session_token
    end

    def ensure_session_token
        if !session_token
            session_token = generate_unique_session_token
        end
    end

end
