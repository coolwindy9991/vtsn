class User < ActiveRecord::Base
  require 'csv'
  include Clearance::User

  has_many :microposts, dependent: :destroy
  has_many :cs_evaluations, foreign_key: "evaluator"
  has_many :sla_evaluations
  
  attr_accessor :remember_token, :activation_token
  validates :staff_id, uniqueness: {:message => "ID has already been taken"}
  # before_save :downcase_email
  before_create :create_activation_digest
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false}
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true
  has_secure_password
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  def User.new_token
    SecureRandom.urlsafe_base64
  end
  
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  def forget
    update_attribute(:remember_digest, nil)
  end
  
  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end
  
  def activate
    update_attribute(:activated,    true)
    update_attribute(:activated_at, Time.zone.now)
  end

  # Sends activation email.
  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end
  
  # Defines a proto-feed.
  # See "Following users" for the full implementation.
  def feed
    Micropost.where("user_id = ?", id)
  end
  
  def self.import_team(filename)
    CSV.foreach(filename, headers: true) do |row|
      u = User.new row.to_hash
      if saved_user = User.find_by_staff_id(u.staff_id)
        saved_user.name = u.name
        saved_user.team_id = u.team_id
        saved_user.save(:validate => false)
      else
        u.password = "abc123"
        u.save(:validate => false)
      end
    end
  end
  
  private
    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end

    # Creates and assigns the activation token and digest.
    def create_activation_digest
      self.activation_token  = User.new_token
      self.activation_digest = User.digest(activation_token)
      self.activated = true
    end
end