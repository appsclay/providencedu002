class HomeController < ApplicationController
  def index
  end

  def about_us
    @about = AboutPage.last
    @teams = Team.take(3)
  end

  def contact_us
    @contact = ContactPage.last
  end

  def privicy_policy
    @privacy_policy_top_text=PrivacyPolicyTopText.last.content
    @policy_headings = PolicyHeding.all.order('position ASC')
  end

  def t_c
    @term = TermPage.last
  end

  def career
    @career = CarrerPage.last
    @positions = Position.all.order('rank ASC')
  end

  def custom
        @student = Student.create(name: params[:name],mmail: params[:mmail], mmessage: params[:mmessage])
        Feedback.get_mail(params[:name],params[:mmail],params[:mmessage]).deliver
        flash[:notice] = "Your email has been recived our support team will get in touch"
         redirect_to '/home/contact_us' 
                  
  end

  def all_courses
    
    @learner = Learner.new
  end

  def all_trainers
    @corporate_trainers = CorporateTrainer.all
  end

  def free_capsule_classes
    
    @capsule_learner = CapsuleLearner.new
  end

end
