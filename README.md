# How to plan and start a new Web Project

Starting a new adventure fixing my old blog code, I started from scratch the whole project following a more structured development.

So, before you start any web project, we can follow this set of questions:

1. What are we building?
2. Who are we building it for?
3. What features do we want to have?
   - User Stories

Once we answer those questions, we can start thinking about

- Model our data
- Navigation and website structure

## Answer the questions

**What are we building?**

 A place where we can share knowledge, examples,  and have people to contact us.

**Who are we building it for?**

Mostly for ourselves, and a possible community. Sharing our learning by blogging, and also improve our presence for potential employers.

**What features do we want to have?**

To answer this question, you first need the user stories. When the finish the user histories, we can list easy the list:

  * About (personal information)
    - Edit
	* Posts
		- Create / Edit / Destroy
		- Markdown for content
		- Syntax Highlight with Coderay
		- Comments (Discussion)
  * Projects
    - Create / Edit / Destroy
	* Contact
		- Contact Form
		- Sendgrid?
	* Simple User management (probably only one)

## User Histories

*As a User, I want to be able to fly, so that we can fly away*

The histories help us identify the requirements:

- As a user, I want to be able to create posts, so that I can share what I am learning on my blog.
- As a user, I want to be able to edit & destroy posts, so that I can manage my blog.
- AS a user, I want to be able to write posts in markdown, so that its easy fro me to write posts.
- As a user, I want to be able to highlight the syntax blocks that I share on my blog.
- As a user, I want to show the visitors and potential employers examples of my work, or stuff I’ve built.
- As a user, I want to be able to have visitors contact through a form on my site.
- As a user, I want visitors to be able o leave comments on my posts.

## Modeling our data
**Posts**  
	title:string  
	content:string  
**Project**  
	title:string  
	description:text  
	link:string  
**User**  

## Navigation and website structure
- Home
- Posts#index
- Posts#show
- Projects#index
- Projects#show
- Contact

Based on this, we can start working on the project and putting everything together. This structure is based on the tutorial post by @mackenziechild on "[Planning our application - How to build a blog & portfolio with Rails 4](https://www.youtube.com/watch?v=cJxp_O5azc4)". Great tutorial series, specially on the planning and desing section.

Current code based on: https://medium.com/@bruno_boehm/full-blog-app-tutorial-on-rails-zero-to-deploy-4c19e8174791
