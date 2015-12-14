class UserMailer < ApplicationMailer


  def disc_lost(disc_id)
    @disc = Disc.find(disc_id) 
    @greeting = "Hi"

    mail to: @disc.user.email, subject: "Lost Disc Confirmation - " + @disc.brand + " " + @disc.name
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.vehicle_update.subject
  #
  def disc_found(disc_id, current_user)
    @disc = Disc.find(disc_id) 
    @greeting = "Hi"
    @current_user = current_user.email
    mail to: @disc.user.email, subject: "Someone found your " + @disc.brand + " " + @disc.name
  end
end
