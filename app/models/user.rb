class User < ApplicationRecord
  enum role: { admin: 'admin', citizen: 'citizen' }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
