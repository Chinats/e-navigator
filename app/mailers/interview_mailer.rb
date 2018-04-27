class InterviewMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def interview_email(user)
    @user = user
    @url  = 'https://e-navigator-chinats.herokuapp.com/'
    mail(to: @user.email, subject: '【e-navigator】面談希望日が決定しました。')
  end
end
