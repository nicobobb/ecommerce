class MailList < ApplicationRecord
	validates_presence_of :email, message: "Woop! Parece que olvidaste colocar el correo"
	validates_uniqueness_of :email, message: "Woop! Este email ya fue registrado"
	validates_format_of :email, with: Devise::email_regexp
end
