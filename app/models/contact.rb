class Contact < ActiveRecord::Base
	attribute :name, :validate => true
	attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message
	attribute :nickname, :captcha => true

	def headers
		{
			:subject => "Comlink Computers Contact Form",
			:to => "favourvictor51@yahoo.com",
			:from => %("#{name}" <#{email}>)
		}
	end
end
