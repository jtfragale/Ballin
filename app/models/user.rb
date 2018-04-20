class User < ActiveRecord::Base
    has_many :months, dependent: :destroy
end