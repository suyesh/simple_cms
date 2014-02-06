class SectionEdit < ActiveRecord::Base
	belong_to :editor, :class_name => "AdminUser", :foreign_key => "admin_user_id"
	belongs_to :section
end
