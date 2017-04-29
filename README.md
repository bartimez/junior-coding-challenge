# Career Plug Coding Challenge

This is the Career Plug junior developer coding challenge. Bellow you will find a set of instructions on how to complete and submit the project. If you have any questions at all please submit an issue or contact us directly!

## Introduction
This challenge will be completed using the stater Ruby on Rails project found in this repository. To get started fork the repository to your Github account. Once you have completed the challenge, and are ready for it to be reviewed, please put in a pull request to the base repository.

## Instructions
You will be building a simple blog for this challenge. There has been some work done for you already, to help get you started, but most of the heavy lifting will be left up to you. The general idea of the blog is as follows.

There are `Post` and `Comment` models. Each post can have many different comments. A comment cannot exist without a `Post`. If a `Post` is deleted, all of its related `Comment` models should be deleted as well. You should be able to _create_ and _delete_ `Post`, as well as _create_, _edit_ and _delete_ comments. There should also be search functionality, that allows you to search for a specific `Post`, you can wire up the search to key off of the `title`, `body` or _both_.

Below are some more specific instructions about the expected flow of the application.

- When you visit the site you are directed to a page showing all `Post`.
  - Each post will consist of a `title` and `body`
  - On this page the `body` of each `Post` should be abbreviated, so all of the text is not showing
  - Each post should have a link indicating how many `Comments` the post has
    - This link, when clicked, should take you to a page showing the `Post`

  - This page should also contain the search bar to search through `Post`
    - After submitting a search you should be redirected back to the `index` page and see a subset of post that match the search criteria.

- When viewing a single `Post`
  - You should have the ability to _delete_ the `Post`
  - All of the `Post` `Comments` should be listed here
  - You should also be able to add new `Comments`
    - Each comment listed should have an a way to _edit_ and _delete_ it
    - How you choose to implement _editing_ and _deletion_ of comments is up to you. If you want to send an `AJAX` request, and write some javascript to handle updates that is fine, you can also wire it up in a more standard `Rails` way and have it do a full page turn.

These are the basic requirements of the challenge. If you are able to get all of this functionality completed you will be in a pretty good spot. Of course there is much more you can do with this challenge. If there is additional functionality that you would like to add, please feel free to do so. Though, would prefer a sound limited app, over a fully featured app that was more rough around the edges.


## Mockups
We've included some mockups below to help you visualize this site. Though, please do not feel that you have to model the layout of your site after these mockups. You are free to style your site however you want! These are provided strictly as another resource for you, and are by no means strict guidelines.

**Viewing All Post**
![](docs/assets/post-index.png)

**Creating a new Post**
![](docs/assets/post-new.png)

**Viewing a single Post**
![](docs/assets/post-show.png)
