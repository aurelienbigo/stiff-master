class UserMailerPreview < ActionMailer::Preview
  def welcome
    @link_customize = 'http://barde.guitars/guitars/new'
    user = User.last
    UserMailer.welcome(user)
  end
end
