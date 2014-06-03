require 'bundler'
Bundler.require
require './the_math.rb'  #where all the math happens (the part we expect students to complete)

get '/' do 
	# pull in the get parameters
	subtotal = params["subtotal"].to_f.round(2)
 	tax_rate = params["tax_rate"].to_f.round(2)
 	tip_percent = params["tip_percent"].to_f.round(2)

 	# whether a receipt has been completed
 	if tax_rate == 0
 		completed = false
 	else
 		completed = true
 		# a receipt has been completed and submitted; so let's calculate the results
	 	tax_amount = calculate_tax_amount(subtotal,tax_rate,tip_percent).round(2)
	 	first_total = calculate_total(subtotal,tax_rate,tip_percent).round(2)
	 	tip_amount = calculate_tip_amount(subtotal,tax_rate,tip_percent).round(2)
	 	final_total = calculate_final_total(subtotal,tax_rate,tip_percent).round(2)
	end

	# pass the results back to index.erb
	erb :index, :locals => {:subtotal => subtotal, 
							:tax_rate => tax_rate, 
							:tax_amount => tax_amount,
							:first_total => first_total,
							:tip_percent => tip_percent, 
							:tip_amount => tip_amount,
							:final_total => final_total,
							:completed => completed}

end
