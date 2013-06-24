module Forem
  class Topic < ActiveRecord::Base
    before_save :set_post_user

    attr_accessible :subject, :user, :posts_attributes
    has_many :posts, :order => "created_at ASC"
    belongs_to :user, :class_name => Forem::Engine.user_class.to_s
    has_one :last_post, :class_name => "Forem::Post", :order => "created_at DESC"
    accepts_nested_attributes_for :posts

    private
      def set_post_user        
        self.posts.first.user = self.user
      end
  end
end
