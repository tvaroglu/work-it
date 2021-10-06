class MailersController < ApplicationController
  def create
    # UserNotifierMailer.send_randomness_email(params[:mailers][:email], params[:mailers][:thought]).deliver_now
    GifSenderWorker.perform_async(params[:mailers][:email], params[:mailers][:thought])
    flash[:message] = "You did it! Email sent to #{params[:mailers][:email]}"
    redirect_to '/sent'
  end

  def sent; end
end
