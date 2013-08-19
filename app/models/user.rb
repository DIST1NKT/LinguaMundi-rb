class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation,
    :remember_me, :provider, :uid, :name
  # attr_accessible :title, :body

  has_many :language_and_skill_levels
  has_many :spoken_languages, :through => :language_and_skill_levels

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20]
                         )
    end
    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def add_language_and_skill_level(language, skill_level)

    @l_a_s_l = LanguageAndSkillLevel.where(:user_id => self.id, :spoken_language_id => language.id).first

    if @l_a_s_l.present?
      @l_a_s_l.update_attribute(:skill_level, skill_level)
    else
      self.language_and_skill_levels << LanguageAndSkillLevel.new(:skill_level => skill_level, :spoken_language_id => language.id)
    end
  end

  def skill_given_a_language(language_s)
    l = SpokenLanguage.where(:name => language_s)
    raise NoSuchLanguageException if !l.present?
    l_skill = LanguageAndSkillLevel.where(:user_id => self.id, :language_id => l.id).first.skill_level
    l_skill
  end

  def has_set_any_language_skills?
    l_skills = self.language_and_skill_levels.count
    if l_skills == 0
      false
    else
      true
    end
  end


end
