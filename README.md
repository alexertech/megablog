# How to plan and start a new Web Project

On a new adventure fixing my old blog code, I started from scratch the whole project following a more structured development.

Following this idea, after some research found an interesting method that we can follow. First, we  must ask 3 questions about our idea:

1. What are we building?
2. Who are we building it for?
3. What features do we want to have?
   - User Stories

Answering this questions will give us a general overview of the project, and help us planning things like our data Models, or the Navigation structure.

## Answer the questions

**What are we building?**

 A place where we can share knowledge, examples, and have people to contact us.

**Who are we building it for?**

Mostly for ourselves, with the idea of creating / growing a community sharing our learning by blogging.

**What features do we want to have?**

To answer this question, you first need to develop the user stories. When their are done we can easily create a list of features:

  * Home 
	* About Page (share personal and contact information)
	* Posts
		- Create / Edit / Destroy
		- Syntax Highlight
	* Snippets
		- Create / Edit / Destroy
  * Food Thought
    - Create / Edit / Destroy
	* Simple User management (probably only one)
	* Markdown for all the contents

## User Histories

To create the user story you need to use a line like this one:

> *As a User, I want to be able to cut stones, so that we can build a stone house*

The histories help us identify the requirements:

- As a user, I want to be able to create posts, so that I can share what I am learning on my blog.
- As a user, I want to be able to edit & destroy posts, so that I can manage my blog.
- AS a user, I want to be able to write posts in markdown, so that is easier to format the contents.
- As a user, I want to be able to highlight the syntax blocks that I share on my blog.
- As a user, I want to be able to catalog my posts, so I can divide them between thoughts, articles and snippets.

## Modeling our data
**Posts**  
	title:string
	content:string
  category:id
**Category**  
	name:string
**User**  

## Navigation and website structure
- Home
- About
- Posts#index
- Posts#show

Based on this, we can start working on the project and putting everything together. This structure is based on the tutorial post by @mackenziechild on "[Planning our application - How to build a blog & portfolio with Rails 4](https://www.youtube.com/watch?v=cJxp_O5azc4)". Great tutorial series, specially on the planning and desing section.

The base of this project was developed following the instructions on: [Full Ruby on Rails Blog App Tutorial](https://medium.com/@bruno_boehm/full-blog-app-tutorial-on-rails-zero-to-deploy-4c19e8174791), with modifications since there are pieces that were developed manually.
