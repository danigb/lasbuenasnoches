class WebMailer < ActionMailer::Base

  EMAILS = ["danigb@gmail.com", "lasbuenasnoches@gmail.com", "touzon_d@yahoo.com",
                      "camilobossocox@yahoo.es", "rubenxito@gmail.com", "clismon@gmail.com" ]

  TEST = ["danigb@gmail.com"]

  def comment_email(comment, email)
    recipients EMAILS
    from        "las buenas noches"
    subject    "han comentado"
    sent_on   Time.now
    body(       {:body => comment, :email => email} )
  end
  
end
