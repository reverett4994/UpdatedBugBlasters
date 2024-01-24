class EmailController < ApplicationController
 skip_before_action :verify_authenticity_token
  def send_email
    @email=params[:email]
    @message=params[:message]
    Contact.contact_email(@email,@message).deliver_now
    respond_to do |format|
      format.html { redirect_to root_url, notice: "Your message was sent! We'll try to respond as soon as possible" }
      format.json { head :no_content }
    end
  end

end
