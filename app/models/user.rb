# == Schema Information
# Schema version: 20110330162148
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation
  
    # Automatically create the virtual attribute 'password_confirmation'.
    validates :password, :presence     => true,
                         :confirmation => true,
                         :length       => { :within => 6..40 }
  end