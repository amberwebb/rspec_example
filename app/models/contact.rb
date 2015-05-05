class Contact < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true

  def fullname
    firstname + " " + lastname
  end
end
