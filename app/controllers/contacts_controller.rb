class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to new_contact_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :comments)
  end
end
