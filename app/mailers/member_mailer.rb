class MemberMailer < ActionMailer::Base
  default from: "support@cloudspokes.com"
  
  def welcome_email(username)
    @username = username
    mail(:subject => "Thank you for registering #{username}")
  end
  
  def new_challenge_comment(id, name, username, profile_pic, comments)
    @challenge_name = name
    @challenge_id = id
    @username = username
    @profile_pic = profile_pic
    @comments = comments
    mail(:subject => "New Comment for '#{name}' Challenge")
  end  
  
end