# React Project - Photo Sharing app

I built a photo sharing app which has certain similarities to Instagram. This app has a rails backend and a React/Redux/Thunk frontend. It also uses Active Storage for image upload ability.

I've always liked Instagram and posting my own photography there. So for this final project I decided to make an app with similarities to Instagram.

This app has signup, login and logout functionality. This app allows users to see posts that other users have uploaded, like posts, and comment on posts. It also allows for you to share your own posts that contain an uploaded image and a caption, and also to be able to delete your posts. Additionally, you can unlike posts you have liked and you can delete comments you have made on posts. I've also added custom CSS to style my frontend.

## To install and run:

-I have two repos, a backend one and a frontend one, that you need to get into to run my app.

-Fork and clone the backend repository at this link: https://github.com/kkirby16/photo-sharer-backend

-Once in the program, open the terminal and run bundle install.

-Next, run rake db:migrate and rake db:seed.

-Then, run rails s -p 4500

-Next, fork and clone the frontend repository at this link: https://github.com/kkirby16/photo-sharer-frontend

-Run npm start

-You will then see my site open up in the browser.

## How to use the site:

-When the site opens in the browser, you'll come to a greeting page for the site with some descriptive text and button for signup and for login.

-Click the signup button to go to the signup page which will allow you to signup. There is also a link on this page that goes to the homepage.

-If a user has possibly used the site already and has an account, they can also choose to login by clicking the login button instead. There is also an option to click a link that takes you to the homepage from here.

-Once you are logged in you can upload towards the top of the screen by choosing an image to upload from your computer and by writing a caption for the post.

-Once created, you'll see your post created and placed towards the top of the screen. If you want to you can delete posts that you've created by clicking the trashcan icon underneath the post.

-You can also scroll down and see posts that others have potentially posted, although if nobody else has posted from an account yet, you'll just see some test posts that I created with the seeds file.

-You can like any post you see by clicking the heart icon underneath it, and you can also comment on any post you see by typing in a post's "Add a comment..." input box and then pressing the "Post" button. Comments made on posts will be displayed underneath the "Add a comment..." input box. You can also unlike a post you have liked by clicking the red heart icon and you can delete any comments you've made on a post by clicking the trashcan icon to the right of the comment.

-If you want to logout of the site, you can press the icon in the top right corner of the screen.

Video of how to use my app: https://youtu.be/cJb1p153Y-0

Blog I wrote that is related to this project: https://dev.to/kkirby16/how-i-can-like-posts-in-my-instagram-esque-rails-react-redux-app-pcl

This project is licensed under: https://www.gnu.org/licenses/gpl-3.0.en.html
