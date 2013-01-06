# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

print "\nWait! Seed db is running......."

q_status = ['Work','Progress','Improved']
q_level = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
20.times do |i|
# Question creation
  @question = Question.create(:info => "What is #{i} ?", :image => File.open(File.join(Rails.root, 'public/q1.jpeg')), :status => q_status.sample, :level => q_level.sample)
# Answer creation
  4.times do |j|
  	@question.question_answers.create(:ans => "Answer is #{j}", :image => File.open(File.join(Rails.root, "public/#{j}.jpeg")), :is_correct => !q_level.include?("#{j}".to_i))
  end	
end

print "Thanks for passion!!! \n"
