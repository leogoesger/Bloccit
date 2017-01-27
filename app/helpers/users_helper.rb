module UsersHelper
	def user_has_post(user)
 		if user.posts.count > 0
 			render user.posts
 		else
 			return "#{user.name} has not submitted any posts yet."
 		end
 	end
end
