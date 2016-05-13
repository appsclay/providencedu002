require 'test_helper'

class FeedbackTest < ActionMailer::TestCase
  test "get_mail" do
    mail = Feedback.get_mail
    assert_equal "Get mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
