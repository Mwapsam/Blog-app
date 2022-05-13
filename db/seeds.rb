User.create(name: 'John', photo: 'profile.jpg', bio: 'Teacher from Mexico.', email: 'john@gmail.com',
    password: 'johnsecret', confirmed_at: Time.now, posts_counter: 3, role: 'admin')

Post.create(title: 'Command on Windows', text: 'How to add, commit and push to git',
   author_id: 1, created_at: Time.now, updated_at: Time.now)

Post.create(title: 'Command on Linux', text: 'How to add, commit and push to git',
   author_id: 1, created_at: Time.now, updated_at: Time.now)

Post.create(title: 'Command on Mac', text: 'How to add, commit and push to git',
   author_id: 1, created_at: Time.now, updated_at: Time.now)