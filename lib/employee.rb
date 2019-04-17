class Employee < ActiveRecord::Base
    belongs_to :store

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate,
      presence: true,
      numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
    validates :store_id, presence: true

    before_save :create_user_password

    private
      def create_user_password
        self.password = (0...8).map { (65 + rand(26)).chr }.join
      end
  
end
