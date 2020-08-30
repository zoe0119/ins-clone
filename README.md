# README

This is the project to **build an instagram clone in Rails**. The main features includes:

- User registration and login
- User are able to post photos, upload with ActiveStorage
- User could leave comments for posts

### Config
ruby '2.4.9'

rails, '~> 5.2.4', '>= 5.2.4.3'
```mermaid
bundle install
rails db:migrate
```

### Registration and login
- User could sign in, sign up, sign out and change the password, username should in the format of email.
- User including admin user and user.
![image](https://user-images.githubusercontent.com/50559221/91652619-4e903600-eadc-11ea-8ef8-1159b2cd24b6.png)

### Post
- Everyone could view the post, including the post list (thumbnail, title and author, default no-image-found image if there is no image in the post) and the post details (title, author, content, images and comment)
 - User **could not** create a new post before signing in, and only admin user and the author could edit and destory the post.
 - Author could post multiple images in post.
![image](https://user-images.githubusercontent.com/50559221/91652736-5d2b1d00-eadd-11ea-81d4-1b7148b0c5d1.png)
![image](https://user-images.githubusercontent.com/50559221/91652781-bd21c380-eadd-11ea-958d-45b58b690d6c.png)

### Comment
- Everyone could view the comments of each post, but user have to sign in before leave the comment.
- User could only delete their own comments, admin user could delete all comments.
![image](https://user-images.githubusercontent.com/50559221/91652858-4e913580-eade-11ea-890a-2dac808efa57.png)
