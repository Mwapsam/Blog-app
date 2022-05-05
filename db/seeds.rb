# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
User.create(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from USA.')
User.create(name: 'Sara', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.')
User.create(name: 'Sophie', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from France.')
User.create(name: 'Linda', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Germany.')
User.create(name: 'Kennedy', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Italy.')
User.create(name: 'Linda', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Spain.')
User.create(name: 'Mwansa', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Portugal.')
User.create(name: 'Banda', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Brazil.')
User.create(name: 'Jack', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Argentina.')
User.create(name: 'Jerald', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Chile.')
User.create(name: 'Cleo', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Peru.')
User.create(name: 'Xing', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
User.create(name: 'Kau', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
User.create(name: 'Guru', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from USA.')

first_post = Post.create(author_id:1 , title: 'Hello, Mwansa', text: 'This is my first post')
second_post = Post.create(author_id:2 , title: 'Hello, Linda ', text: 'This is my second post')
third_post = Post.create(author_id:3 , title: 'Hello, Linda ', text: 'This is my third post')
fourth_post = Post.create(author_id:4 , title: 'Hello, Lilly', text: 'This is my fourth post')
fifth_post = Post.create(author_id:5 , title: 'Hello, Luke', text: 'This is my fifth post')
sixth_post = Post.create(author_id:6 , title: 'Hello, Kennedy', text: 'This is my sixth post')
seventh_post = Post.create(author_id:7 , title: 'Hello, John', text: 'This is my seventh post')
eighth_post = Post.create(author_id:8 , title: 'Hello, Sophie', text: 'This is my eighth post')
ninth_post = Post.create(author_id:9 , title: 'Hello, Sara', text: 'This is my ninth post')
tenth_post = Post.create(author_id:10 , title: 'Hello, Banda', text: 'This is my tenth post')
eleventh = Post.create(author_id:11 , title: 'Hello, Ben', text: 'This is my eleventh post')
twelfth = Post.create(author_id:12 , title: 'Hello, Benjamin', text: 'This is my twelfth post')
thirteenth = Post.create(author_id:13 , title: 'Hello, Dad', text: 'This is my thirteenth post')
fourteenth = Post.create(author_id:14 , title: 'Hello, Mom', text: 'This is my fourteenth post')
fifteenth = Post.create(author_id:15 , title: 'Hello, Aunt', text: 'This is my fifteenth post')
sixteenth = Post.create(author_id:16 , title: 'Hello, Uncle', text: 'This is my sixteenth post')
seventeenth = Post.create(author_id:17 , title: 'Hello, Cousin', text: 'This is my seventeenth post')
eighteenth = Post.create(author_id:18 , title: 'Hello, Cousin', text: 'This is my eighteenth post')
nineteenth = Post.create(author_id:19 , title: 'Hello, Cousin', text: 'This is my nineteenth post')
twentieth = Post.create(author_id:20 , title: 'Hello, Cousin', text: 'This is my twentieth post')
twenty_first = Post.create(author_id:1 , title: 'Hello, Mwansa', text: 'This is my first post')
twenty_second = Post.create(author_id:2 , title: 'Hello, Linda ', text: 'This is my second post')
twenty_third = Post.create(author_id:3 , title: 'Hello, Linda ', text: 'This is my third post')
twenty_fourth = Post.create(author_id:4 , title: 'Hello, Lilly', text: 'This is my fourth post')
twenty_fifth = Post.create(author_id:5 , title: 'Hello, Luke', text: 'This is my fifth post')
twenty_sixth = Post.create(author_id:6 , title: 'Hello, Kennedy', text: 'This is my sixth post')
twenty_seventh = Post.create(author_id:7 , title: 'Hello, John', text: 'This is my seventh post')
twenty_eighth = Post.create(author_id:8 , title: 'Hello, Sophie', text: 'This is my eighth post')
thirty = Post.create(author_id:10 , title: 'Hello, Banda', text: 'This is my tenth post')
thirty_one = Post.create(author_id:11 , title: 'Hello, Ben', text: 'This is my eleventh post')
thirty_two = Post.create(author_id:12 , title: 'Hello, Benjamin', text: 'This is my twelfth post')
thirty_three = Post.create(author_id:13 , title: 'Hello, Dad', text: 'This is my thirteenth post')
thirty_four = Post.create(author_id:14 , title: 'Hello, Mom', text: 'This is my fourteenth post')
thirty_five = Post.create(author_id:15 , title: 'Hello, Aunt', text: 'This is my fifteenth post')
thirty_six = Post.create(author_id:16 , title: 'Hello, Uncle', text: 'This is my sixteenth post')
thirty_seven = Post.create(author_id:17 , title: 'Hello, Cousin', text: 'This is my seventeenth post')
thirty_eight = Post.create(author_id:18 , title: 'Hello, Cousin', text: 'This is my eighteenth post')
thirty_nine = Post.create(author_id:19 , title: 'Hello, Cousin', text: 'This is my nineteenth post')
forty = Post.create(author_id:20 , title: 'Hello, Cousin', text: 'This is my twentieth post')
forty_one = Post.create(author_id:1 , title: 'Hello, Mwansa', text: 'This is my first post')
forty_two = Post.create(author_id:2 , title: 'Hello, Linda ', text: 'This is my second post')
forty_three = Post.create(author_id:3 , title: 'Hello, Linda ', text: 'This is my third post')
forty_four = Post.create(author_id:4 , title: 'Hello, Lilly', text: 'This is my fourth post')


Comment.create(post: first_post, author_id: 2, text: 'Great post' )
Comment.create(post: second_post, author_id: 2, text: 'I enjoy second post' )
Comment.create(post: third_post, author_id: 2, text: 'I enjoy third post' )
Comment.create(post: fourth_post, author_id: 2, text: 'I enjoy fourth post' )
Comment.create(post: fifth_post, author_id: 3, text: 'I enjoy fifth post' )
Comment.create(post: sixth_post, author_id: 3, text: 'I enjoy sixth post' )
Comment.create(post: seventh_post, author_id: 3, text: 'I enjoy seventh post' )
Comment.create(post: eighth_post, author_id: 3, text: 'I enjoy eighth post' )
Comment.create(post: ninth_post, author_id: 4, text: 'I enjoy ninth post' )
Comment.create(post: tenth_post, author_id: 4, text: 'I enjoy tenth post' )
Comment.create(post: first_post, author_id: 4, text: 'I enjoy eleventh post' )
Comment.create(post: second_post, author_id: 4, text: 'I enjoy twelfth post' )
Comment.create(post: third_post, author_id: 5, text: 'I enjoy thirteenth post' )
Comment.create(post: fourth_post, author_id: 5, text: 'I enjoy fourteenth post' )
Comment.create(post: fifth_post, author_id: 5, text: 'I enjoy fifteenth post' )
Comment.create(post: sixth_post, author_id: 5, text: 'I enjoy sixteenth post' )
Comment.create(post: seventh_post, author_id: 5, text: 'I enjoy seventeenth post' )
Comment.create(post: eighth_post, author_id: 6, text: 'I enjoy eighteenth post' )
Comment.create(post: ninth_post, author_id: 6, text: 'I enjoy nineteenth post' )
Comment.create(post: tenth_post, author_id: 6, text: 'I enjoy twentieth post' )
Comment.create(post: first_post, author_id: 6, text: 'I enjoy twenty first post' )
Comment.create(post: second_post, author_id: 6, text: 'I enjoy twenty second post' )
Comment.create(post: third_post, author_id: 7, text: 'I enjoy twenty third post' )
Comment.create(post: fourth_post, author_id: 7, text: 'I enjoy twenty fourth post' )
Comment.create(post: fifth_post, author_id: 7, text: 'I enjoy twenty fifth post' )
Comment.create(post: sixth_post, author_id: 7, text: 'I enjoy twenty sixth post' )
Comment.create(post: seventh_post, author_id: 7, text: 'I enjoy twenty seventh post' )
Comment.create(post: eighth_post, author_id: 8, text: 'I enjoy twenty eighth post' )
Comment.create(post: ninth_post, author_id: 8, text: 'I enjoy twenty ninth post' )
Comment.create(post: tenth_post, author_id: 8, text: 'I enjoy twenty tenth post' )
Comment.create(post: first_post, author_id: 8, text: 'I enjoy twenty eleventh post' )
Comment.create(post: second_post, author_id: 8, text: 'I enjoy twenty twelfth post' )
Comment.create(post: third_post, author_id: 9, text: 'I enjoy twenty thirteenth post' )
Comment.create(post: fourth_post, author_id: 9, text: 'I enjoy twenty fourteenth post' )
Comment.create(post: fifth_post, author_id: 9, text: 'I enjoy twenty fifteenth post' )
Comment.create(post: sixth_post, author_id: 9, text: 'I enjoy twenty sixteenth post' )
Comment.create(post: seventh_post, author_id: 9, text: 'I enjoy twenty seventeenth post' )
Comment.create(post: eighth_post, author_id: 10, text: 'I enjoy twenty eighteenth post' )
Comment.create(post: ninth_post, author_id: 10, text: 'I enjoy twenty nineteenth post' )
Comment.create(post: tenth_post, author_id: 10, text: 'I enjoy twenty twentieth post' )
Comment.create(post: first_post, author_id: 10, text: 'I enjoy twenty twenty first post' )
Comment.create(post: second_post, author_id: 10, text: 'I enjoy twenty twenty second post' )
Comment.create(post: third_post, author_id: 11, text: 'I enjoy twenty twenty third post' )
Comment.create(post: fourth_post, author_id: 11, text: 'I enjoy twenty twenty fourth post' )
Comment.create(post: fifth_post, author_id: 11, text: 'I enjoy twenty twenty fifth post' )
Comment.create(post: sixth_post, author_id: 11, text: 'I enjoy twenty twenty sixth post' )
Comment.create(post: seventh_post, author_id: 11, text: 'I enjoy twenty twenty seventh post' )
Comment.create(post: eighth_post, author_id: 12, text: 'I enjoy twenty twenty eighth post' )
Comment.create(post: ninth_post, author_id: 12, text: 'I enjoy twenty twenty ninth post' )
Comment.create(post: tenth_post, author_id: 12, text: 'I enjoy twenty twenty tenth post' )
Comment.create(post: eleventh, author_id: 12, text: 'I enjoy twenty twenty eleventh post' )
Comment.create(post: twelfth, author_id: 12, text: 'I enjoy twenty twenty twelfth post' )
Comment.create(post: thirteenth, author_id: 13, text: 'I enjoy twenty twenty thirteenth post' )
Comment.create(post: fourteenth, author_id: 13, text: 'I enjoy twenty twenty fourteenth post' )
Comment.create(post: fifteenth, author_id: 13, text: 'I enjoy twenty twenty fifteenth post' )
Comment.create(post: sixteenth, author_id: 13, text: 'I enjoy twenty twenty sixteenth post' )
Comment.create(post: seventeenth, author_id: 13, text: 'I enjoy twenty twenty seventeenth post' )
Comment.create(post: eighteenth, author_id: 14, text: 'I enjoy twenty twenty eighteenth post' )
Comment.create(post: nineteenth, author_id: 14, text: 'I enjoy twenty twenty nineteenth post' )
Comment.create(post: twentieth, author_id: 14, text: 'I enjoy twenty twenty twentieth post' )
Comment.create(post: twenty_first, author_id: 14, text: 'I enjoy twenty twenty twenty first post' )
Comment.create(post: twenty_second, author_id: 14, text: 'I enjoy twenty twenty twenty second post' )
Comment.create(post: twenty_third, author_id: 15, text: 'I enjoy twenty twenty twenty third post' )
Comment.create(post: twenty_fourth, author_id: 15, text: 'I enjoy twenty twenty twenty fourth post' )
Comment.create(post: twenty_fifth, author_id: 15, text: 'I enjoy twenty twenty twenty fifth post' )
Comment.create(post: twenty_sixth, author_id: 15, text: 'I enjoy twenty twenty twenty sixth post' )
Comment.create(post: twenty_seventh, author_id: 15, text: 'I enjoy twenty twenty twenty seventh post' )
Comment.create(post: twenty_eighth, author_id: 16, text: 'I enjoy twenty twenty twenty eighth post' )
Comment.create(post: thirty, author_id: 16, text: 'I enjoy twenty twenty twenty ninth post' )
Comment.create(post: thirty_one, author_id: 16, text: 'I enjoy twenty twenty twenty tenth post' )
Comment.create(post: thirty_two, author_id: 16, text: 'I enjoy twenty twenty twenty eleventh post' )
Comment.create(post: thirty_three, author_id: 16, text: 'I enjoy twenty twenty twenty twelfth post' )
Comment.create(post: thirty_four, author_id: 17, text: 'I enjoy twenty twenty twenty thirteenth post' )
Comment.create(post: thirty_five, author_id: 17, text: 'I enjoy twenty twenty twenty fourteenth post' )
Comment.create(post: thirty_six, author_id: 17, text: 'I enjoy twenty twenty twenty fifteenth post' )
Comment.create(post: thirty_seven, author_id: 17, text: 'I enjoy twenty twenty twenty sixteenth post' )
Comment.create(post: thirty_eight, author_id: 17, text: 'I enjoy twenty twenty twenty seventeenth post' )
Comment.create(post: thirty_nine, author_id: 18, text: 'I enjoy twenty twenty twenty eighteenth post' )
Comment.create(post: forty, author_id: 18, text: 'I enjoy twenty twenty twenty nineteenth post' )
Comment.create(post: forty_one, author_id: 18, text: 'I enjoy twenty twenty twenty twentieth post' )
Comment.create(post: forty_two, author_id: 18, text: 'I enjoy twenty twenty twenty twenty first post' )
Comment.create(post: forty_three, author_id: 18, text: 'I enjoy twenty twenty twenty twenty second post' )
Comment.create(post: forty_four, author_id: 19, text: 'I enjoy twenty twenty twenty twenty third post' )

Like.create(post: first_post, author_id: 2)
Like.create(post: second_post, author_id: 2)
Like.create(post: third_post, author_id: 3)
Like.create(post: fourth_post, author_id: 3)
Like.create(post: fifth_post, author_id: 3)
Like.create(post: sixth_post, author_id: 3)
Like.create(post: seventh_post, author_id: 3)
Like.create(post: eighth_post, author_id: 4)
Like.create(post: ninth_post, author_id: 4)
Like.create(post: tenth_post, author_id: 4)
Like.create(post: eleventh, author_id: 4)
Like.create(post: twelfth, author_id: 4)
Like.create(post: thirteenth, author_id: 5)
Like.create(post: fourteenth, author_id: 5)
Like.create(post: fifteenth, author_id: 5)
Like.create(post: sixteenth, author_id: 5)
Like.create(post: seventeenth, author_id: 5)
Like.create(post: eighteenth, author_id: 6)
Like.create(post: nineteenth, author_id: 6)
Like.create(post: twentieth, author_id: 6)
Like.create(post: twenty_first, author_id: 6)
Like.create(post: twenty_second, author_id: 6)
Like.create(post: twenty_third, author_id: 7)
Like.create(post: twenty_fourth, author_id: 7)
Like.create(post: twenty_fifth, author_id: 7)
Like.create(post: twenty_sixth, author_id: 7)
Like.create(post: twenty_seventh, author_id: 7)
Like.create(post: twenty_eighth, author_id: 8)
Like.create(post: thirty, author_id: 8)
Like.create(post: thirty_one, author_id: 8)
Like.create(post: thirty_two, author_id: 8)
Like.create(post: thirty_three, author_id: 8)
Like.create(post: thirty_four, author_id: 9)
Like.create(post: thirty_five, author_id: 9)
Like.create(post: thirty_six, author_id: 9)
Like.create(post: thirty_seven, author_id: 9)
Like.create(post: first_post, author_id: 2)
Like.create(post: second_post, author_id: 2)
Like.create(post: third_post, author_id: 3)
Like.create(post: fourth_post, author_id: 3)
Like.create(post: fifth_post, author_id: 3)
Like.create(post: sixth_post, author_id: 3)
Like.create(post: seventh_post, author_id: 3)
Like.create(post: eighth_post, author_id: 4)
Like.create(post: ninth_post, author_id: 4)
Like.create(post: tenth_post, author_id: 4)
Like.create(post: eleventh, author_id: 4)
Like.create(post: twelfth, author_id: 4)
Like.create(post: thirteenth, author_id: 5)
Like.create(post: fourteenth, author_id: 5)
Like.create(post: fifteenth, author_id: 5)
Like.create(post: sixteenth, author_id: 5)
Like.create(post: seventeenth, author_id: 5)
Like.create(post: eighteenth, author_id: 6)
Like.create(post: nineteenth, author_id: 6)
Like.create(post: twentieth, author_id: 6)
Like.create(post: twenty_first, author_id: 6)
Like.create(post: twenty_second, author_id: 6)
Like.create(post: twenty_third, author_id: 7)
Like.create(post: twenty_fourth, author_id: 7)
Like.create(post: twenty_fifth, author_id: 7)
Like.create(post: twenty_sixth, author_id: 7)
Like.create(post: twenty_seventh, author_id: 7)
Like.create(post: twenty_eighth, author_id: 8)
Like.create(post: thirty, author_id: 8)
Like.create(post: thirty_one, author_id: 8)
Like.create(post: thirty_two, author_id: 8)
Like.create(post: thirty_three, author_id: 8)
Like.create(post: thirty_four, author_id: 9)
Like.create(post: thirty_five, author_id: 9)
Like.create(post: thirty_six, author_id: 9)
Like.create(post: thirty_seven, author_id: 9)
Like.create(post: first_post, author_id: 2)
Like.create(post: second_post, author_id: 2)
Like.create(post: third_post, author_id: 3)
Like.create(post: fourth_post, author_id: 3)
Like.create(post: fifth_post, author_id: 3)
Like.create(post: sixth_post, author_id: 3)
Like.create(post: seventh_post, author_id: 3)
Like.create(post: eighth_post, author_id: 4)
Like.create(post: ninth_post, author_id: 4)
Like.create(post: tenth_post, author_id: 4)
Like.create(post: eleventh, author_id: 4)
Like.create(post: twelfth, author_id: 4)
Like.create(post: thirteenth, author_id: 5)
Like.create(post: fourteenth, author_id: 5)
Like.create(post: fifteenth, author_id: 5)
Like.create(post: sixteenth, author_id: 5)
Like.create(post: seventeenth, author_id: 5)
Like.create(post: eighteenth, author_id: 6)
Like.create(post: nineteenth, author_id: 6)
Like.create(post: twentieth, author_id: 6)
Like.create(post: twenty_first, author_id: 6)
Like.create(post: twenty_second, author_id: 6)
Like.create(post: twenty_third, author_id: 7)
Like.create(post: twenty_fourth, author_id: 7)
Like.create(post: twenty_fifth, author_id: 7)
Like.create(post: twenty_sixth, author_id: 7)
Like.create(post: twenty_seventh, author_id: 7)
Like.create(post: twenty_eighth, author_id: 8)
Like.create(post: thirty, author_id: 8)
Like.create(post: thirty_one, author_id: 8)
Like.create(post: thirty_two, author_id: 8)
Like.create(post: thirty_three, author_id: 8)
Like.create(post: thirty_four, author_id: 9)
Like.create(post: thirty_five, author_id: 9)
Like.create(post: thirty_six, author_id: 9)
Like.create(post: thirty_seven, author_id: 9)
Like.create(post: first_post, author_id: 2)
Like.create(post: second_post, author_id: 2)
Like.create(post: third_post, author_id: 3)
Like.create(post: fourth_post, author_id: 3)
Like.create(post: fifth_post, author_id: 3)
Like.create(post: sixth_post, author_id: 3)
Like.create(post: seventh_post, author_id: 3)
Like.create(post: eighth_post, author_id: 4)
Like.create(post: ninth_post, author_id: 4)
Like.create(post: tenth_post, author_id: 4)
Like.create(post: eleventh, author_id: 4)
Like.create(post: twelfth, author_id: 4)
Like.create(post: thirteenth, author_id: 5)
Like.create(post: fourteenth, author_id: 5)
Like.create(post: fifteenth, author_id: 5)
Like.create(post: sixteenth, author_id: 5)
Like.create(post: seventeenth, author_id: 5)
Like.create(post: eighteenth, author_id: 6)
Like.create(post: nineteenth, author_id: 6)
Like.create(post: twentieth, author_id: 6)
Like.create(post: twenty_first, author_id: 6)
Like.create(post: twenty_second, author_id: 6)
Like.create(post: twenty_third, author_id: 7)
Like.create(post: twenty_fourth, author_id: 7)
Like.create(post: twenty_fifth, author_id: 7)
Like.create(post: twenty_sixth, author_id: 7)
Like.create(post: twenty_seventh, author_id: 7)
Like.create(post: twenty_eighth, author_id: 8)
Like.create(post: thirty, author_id: 8)
Like.create(post: thirty_one, author_id: 8)
Like.create(post: thirty_two, author_id: 8)
Like.create(post: thirty_three, author_id: 8)
Like.create(post: thirty_four, author_id: 9)
Like.create(post: thirty_five, author_id: 9)
Like.create(post: thirty_six, author_id: 9)
Like.create(post: thirty_seven, author_id: 9)
Like.create(post: first_post, author_id: 2)
Like.create(post: second_post, author_id: 2)
Like.create(post: third_post, author_id: 3)
Like.create(post: fourth_post, author_id: 3)
Like.create(post: fifth_post, author_id: 3)
Like.create(post: sixth_post, author_id: 3)
Like.create(post: seventh_post, author_id: 3)
Like.create(post: eighth_post, author_id: 4)
Like.create(post: ninth_post, author_id: 4)
Like.create(post: tenth_post, author_id: 4)
Like.create(post: eleventh, author_id: 4)
Like.create(post: twelfth, author_id: 4)
Like.create(post: thirteenth, author_id: 5)
Like.create(post: fourteenth, author_id: 5)
Like.create(post: fifteenth, author_id: 5)
Like.create(post: sixteenth, author_id: 5)
Like.create(post: seventeenth, author_id: 5)
Like.create(post: eighteenth, author_id: 6)
Like.create(post: nineteenth, author_id: 6)
Like.create(post: twentieth, author_id: 6)
Like.create(post: twenty_first, author_id: 6)
Like.create(post: twenty_second, author_id: 6)
Like.create(post: twenty_third, author_id: 7)
Like.create(post: twenty_fourth, author_id: 7)
Like.create(post: twenty_fifth, author_id: 7)   








