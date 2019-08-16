# Ruby & Ruby on Rails Basics - Sprint Challenge - Awesome Blog

## Instructions

**Read these instructions carefully. Understand exactly what is expected before starting this Sprint Challenge.**

This is an individual assessment. All work must be your own. Your challenge score will be a measure of your ability to work independently using the material covered during this sprint. You need to demonstrate proficiency in the concepts and objectives introduced and practiced in the preceding days.

You are not allowed to collaborate during the Sprint Challenge. However, you are encouraged to follow the twenty-minute rule and seek support from your PM and Instructor in your cohort help channel on Slack. Your work reflects your proficiency in Ruby and Ruby on Rails Basics.

You have three hours to complete this challenge. Plan your time accordingly.

## Commits

Commit your code regularly and meaningfully. This helps both you (in case you ever need to return to old code for any reason) and your project manager.

## Description

You are going to create a rails application called `awesome_blog`. Your job is to set up the blog so that it contains `posts` and `quotes` which are similar but `quotes` do not contain a `title` field.

## Self-Study Questions

### Git Set Up

- [ ] Fork the project into your GitHub user account
- [ ] Clone the forked project into a directory on your machine
- [ ] Create a pull request before you start working on the project requirements.  You will continuously push your updates throughout the project.
- [ ] You are now ready to build this project with your preferred IDE

## Minimum Viable Product

When your project is completed, you will be able to run a rails development server in order to create posts and quotes on the front-end. This data will be persisted to a database.

You will have a WordCounter module that will be included in your `Post` and `Quote` models so that you can get the number of words on any of your `posts` or `quotes`.

You will also create a `AppStats` class with numerous methods that you can use from the rails console to get statistics about your application's `posts` and `quotes`.

These are the steps you should take in order to create your MVP:

1. Create a new rails application called `awesome_blog`.
2. Scaffold a posts resource that has the following attributes:
   - title:string
   - body:text
   - published_at:datetime
3. Scaffold a quotes resource that has the following attributes:
   - body:text
   - published_at:datetime
4. Run the migration command to update the database with the new resources.
5. Run the rails server and use the appropriate url endpoints to add some `posts` and `quotes` to your application
6. Create a single Module called WordCounter in the `app/models` folder.
7. Write a method in the module named `word_count` that counts the total number of words in the `body` attribute of any file it is mixed into. If the body is `nil`, you should return `0`.
8. The `Quote` and `Post` model files shoulde `include` the `WordCounter` module.
9. Create a class called `AppStats` in the `app/models` directory. Create two instance variables--one for `posts` and one for `quotes`. Make sure to set them up with the `attr_reader` method so they can be accessed externally but not changed externally. Use the `initialize` method to store all the posts in the posts instance variable and all the quotes in the quotes instance variable.
10. Create the following methods in the `AppStats` class:
    1. `posts_count`: returns the number of posts
    2. `quotes_count`: returns the number of quotes
    3. `posts_word_count`: returns the word count of all posts in one sum
    4. `quotes_word_count`: returns the word count of all quotes in one sum
    5. `total_count`: returs the total of all posts and quotes in one sum
    6. `total_word_count`: returns the total of all words in posts and quotes in one sum
11. Utilize the rails console to instantiate the `AppStats` class and use it to test all of the statistical methods you created.

## Stretch Problems

1. Create a controller and views to show `AppStats` data on the root route.
