class ContactsController < ApplicationController

	def show
		@contact = Contact.find(params[:id])
	end

	def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(
	      :name => params[:contact][:name],
	      :address => params[:contact][:address],
	      :phone_number => params[:contact][:phone_number],
	      :email => params[:contact][:email]
	    )
		@contact.save
		redirect_to("/contacts")
	end

	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
		redirect_to contacts_path
	end	

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
	  @contact = Contact.find(params[:id])
	  @contact.update(contact_params)
	  flash.notice = "Contact '#{@contact.title}' Updated!"
	  redirect_to Contact_path(@contact)
	end

	private
	def contact_params
		params.require(:contact).permit(:name, :address, :phone_number, :email)
	end	

end
