# README

This is the project to **build an instagram clone in Rails**. The main features includes:

- User registration and login
- User are able to post photos, upload with ActiveStorage
- User could leave comments for posts

### Registration and login
- User could sign in, sign up, sign out and change the password, username should in the format of email.
- User including admin user and user.

### Post
- Everyone could view the post, including the post list ( thumbnail, title and author) and the post details (title, author, content, images and comment)
 - User **could not** create a new post before signing in, and only admin user and the author could edit and destory the post.
 - Author could post multiple images in post.

### Comment
- Everyone could view the comments of each post, but user have to sign in before leave the comment.
- User could only delete their own comments, admin user could delete all comments.
