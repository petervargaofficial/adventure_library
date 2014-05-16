class Adventure < ActiveRecord::Base
  belongs_to :library
  has_many :pages

  before_create :create_guid

  private
  def create_guid
  	self.guid = SecureRandom.urlsafe_base64(10)
  end

end
