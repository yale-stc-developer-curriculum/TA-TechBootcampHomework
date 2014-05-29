require 'googlevoiceapi'

class HomeworkReport
	@@my_number = "8607547447"

	def send_report(report)
		api = GoogleVoice::Api.new('charlierproctor4@gmail.com', 'YaleSummer2014')

		results = IO.readlines(report)
		message = ""
		results.each do |line|
			message += line
		end

		api.sms(@@my_number, "Your results: \n" + message )

	end

end