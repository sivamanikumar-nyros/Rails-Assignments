class ContactsController < ApplicationController

before_action :set_name, only: [:show, :edit, :update, :destroy]
  def index
    @contacts = Contact.all
    respond_to  do |format|
      format.html
      format.js
    end
  end

  def new
    @contact = Contact.new
  end

  def show
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)
    # binding.pry
    if @contact.save
      redirect_to contacts_path
    else
      render 'new'
    end
  end

  def update
    # binding.pry
    if @contact.update(contact_params)
      redirect_to contacts_path
    else
      render 'edit'
    end
  end

  def destroy
    if @contact.destroy
      redirect_to contacts_path
    end
  end

  private

  def set_name
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name,:user_id)
  end

end