class User < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :followers,
     autosave: true,
     class_name: 'User',
     join_table: :connections,
     foreign_key: :user_id,
     association_foreign_key: :follower_id
end
