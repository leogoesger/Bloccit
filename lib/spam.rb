module Spam
	def self.censor(data)
		data[0].title = "SPAM"
		data.each_with_index do |val, index|
			if (index + 1) % 5 == 0
				data[index].title = "SPAM"
			end
		end
	end
end