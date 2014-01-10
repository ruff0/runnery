class Order < ActiveRecord::Base
	belongs_to :user

	default_scope -> { order('created_at ASC') }
	validates :user_id, presence: true
	validates :address, presence: true
	VALID_PHONE_REGEX = /(\d{10})/
	validates :phone, presence: true, format: { with: VALID_PHONE_REGEX }
	validates :surcharge, presence: true

 def self.from_users_done_by(user)
    done_user_ids = "SELECT done_id FROM deliveries
                         WHERE running_id = :user_id"
    where("user_id IN (#{done_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
end
