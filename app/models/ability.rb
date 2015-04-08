class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
    # can :read, :all                   # allow everyone to read everything
    # models: :additional_fee, :additional_fee_payment, :admission, :batch, :course, :fee, :fee_head, :firm, :installment, :payment, :standard, :subject, :user
    if user 
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      if user.role? :superadmin
        can :manage, :all             # allow superadmins to do anything
      elsif user.role? :admin
        can :create, [User,Student,Admission,Batch,Payment,Installment,AdditionalFeePayment,Standard,Subject,Firm,AdditionalFee]
        can :update, [User,Student,Admission,Batch,Payment,Installment,AdditionalFeePayment,Standard,Subject,Firm,AdditionalFee]
        can :read, [User,Student,Admission,Batch,Payment,Installment,AdditionalFeePayment,Standard,Subject,Course,Firm,AdditionalFee]
        can :show_in_app, Student
        # can :read_reports, :reports
      elsif user.role? :account
        can :create, [Student,Admission,Batch,Payment,Installment,AdditionalFeePayment]
        can :read, [Student, Installment,Admission,Batch,Payment,Installment,AdditionalFeePayment]
        can :show_in_app, Student
        can :update, [Student]
        # can :read_reports, :reports
      elsif user.role? :center_manager
        can :create, [Student,Admission,Batch,Payment,Installment,AdditionalFeePayment]
        can :read, [Student, Installment,Admission,Batch,Payment,Installment,AdditionalFeePayment]
        can :show_in_app, Student
        can :update, [Student]
      elsif user.role? :executive
        can :create, [Student,Admission]
        can :read, [Student, Installment,Admission]
        can :show_in_app, Student
      end
    end
  end
end
