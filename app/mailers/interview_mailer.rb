class InterviewMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def interview_email(user, current_user)
    @user = user
    @current_user = current_user
    @url  = 'https://e-navigator-chinats.herokuapp.com/'
    @interview = Interview.approved.find_by(user_id: user.id)&.candidate
    mail(to: @user.email, subject: '【e-navigator】面談日時が確定しました。')
  end
end
