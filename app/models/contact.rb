class Contact < ApplicationRecord


  def index
    @contacts = Contact.all
  end

end
