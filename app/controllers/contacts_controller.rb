class ContactsController < ApplicationController
  
  before_action :set_contact, only: [:show, :edit, :update, :destroy] 
 
  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      redirect_to contacts_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  def destroy
    if @contact.destroy
      redirect_to contacts_path
    else
      redirect_to contacts_path
    end
  end
  
  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
   params.require(:contact).permit(:full_name, :phone_number, :email, :address ) 
  end
end
