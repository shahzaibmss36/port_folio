class EnquiriesController < ApplicationController
    def new
      @enquiry = Enquiry.new
    end
  
    def create
        @enquiry = Enquiry.new(enquiry_params)
        if @enquiry.save
          redirect_to root_path, notice: 'Enquiry was successfully created.'
        else
          flash.now[:error] = @enquiry.errors.full_messages.join(", ")
          render :new
        end
      end    
  
    private
  
    def enquiry_params
      params.require(:enquiry).permit(:name, :subject, :email, :description)
    end
  end