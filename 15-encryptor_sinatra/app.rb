require 'sinatra'
require 'sinatra/reloader'

configure do
	enable :sessions
end

class Encryptor

	# Returns a hash with the correct key-value pairs given a rotation value
	def self.cipher(rotation)
		characters = (' '..'z').to_a
		rotated_characters = characters.rotate(rotation)
		Hash[characters.zip(rotated_characters)]
	end

	# Returns the ciphertext output for one letter
	def self.encrypt_letter(letter,rotation)
	    cipher_for_rotation = cipher(rotation)
	    cipher_for_rotation[letter]
	end

	# Returns the ciphertext for a given plaintext and rotation value
	def self.encrypt(string,rotation)
		letters = string.split('')
		results = letters.collect do |letter|
			encrypt_letter(letter,rotation)
		end
		results.join
	end

	# Returns the plaintext for a given ciphertext and rotation value
	def self.decrypt(string,rotation)
		encrypt(string,-rotation)
	end

end

get '/' do
	session[:history] ||= []
	erb :"index.html", :locals => {:history => session[:history]}
end

post '/' do
	session[:history] ||= []
	pt = params[:plaintext]
	rot = params[:rotation].to_i
	if params[:action] == "Encrypt"
		ct = Encryptor.encrypt(pt,rot)
	else
		ct = Encryptor.encrypt(pt,(rot *= -1))
	end
	if rot > 0
		rot = "+" + rot.to_s
	else
		rot = rot.to_s
	end
	session[:history].unshift([pt,rot,ct])
	erb :"index.html", :locals => {:history => session[:history]}
end