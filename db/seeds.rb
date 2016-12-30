require 'random_data'
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all
# Create Posts
50.times do
# #1
	Post.create!(
	# #2
	 topic:  topics.sample,
	 title:  RandomData.random_sentence,
	 body:   RandomData.random_paragraph
	)
end

Post.find_or_create_by(
	title: "Das New Title",
	body: "Das New Body"
)

posts = Post.all

100.times do
	Comment.create!(
	# #4
		post: posts.sample,
		body: RandomData.random_paragraph
	)
end

myPost = 1
posts.each do |p|
	if p.title == "Das New Title"
		myPost = p
	end
end

Comment.find_or_create_by(
	post: myPost,
	body: "my post"
)

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"