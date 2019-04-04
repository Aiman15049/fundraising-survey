class DonationFormsController < ApplicationController


  def create
    @donation_form = DonationForm.new donation_form_params

     if @donation_form.save
       redirect_to donation_form_url(@donation_form), notice: "Contact details received, thanks!"
     else
       render :new
     end
  end

  def index
      @donation_forms = DonationForm.all
  end

 def new
   @donation_form = DonationForm.new
 end


 private

 def donation_form_params
   params.require(:donation_form).permit!
 end
end
