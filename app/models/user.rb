class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # S「それぞれのカラムが空では保存できない」というバリデーションを設定する場合
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true  

  has_many :prototypes
  has_many :comments

end
