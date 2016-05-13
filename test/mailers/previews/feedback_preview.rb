# Preview all emails at http://localhost:3000/rails/mailers/feedback
class FeedbackPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/feedback/get_mail
  def get_mail
    Feedback.get_mail
  end

end
