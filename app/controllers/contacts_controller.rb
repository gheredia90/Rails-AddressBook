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
		@contact = Contact.new(contact_params)
		@contact.save
		redirect_to contacts_path
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
		params.require(:Contact).permit(:title, :price)
	end	

end
