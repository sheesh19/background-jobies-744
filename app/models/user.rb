class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_commit :update_user_info


  private

  def update_user_info
    # user.update_user_info
    # user == self
    UpdateUserJob.perform_later(self)
  end
end
