# Commerce Platform

## Description

A GraphQL API of an e-commerce platform


## Functional requirements
  * Registration
  * Password on the database must be hashed (I used Argon2 for that)
  * User login using JWT
  * Role-based access control (admin, user)
  * Admins can see the lists of users
  * CRUDS to these entities:
    * Products
    * Product categories
  * List all products (Admins)
  * List available products, according to the number of products on inventory
  * List out of stock products (Admins)

## Some notes:
  * Some dummy data will be inserted into the database for you to try things quickly. I did this for you ;)
  * I'm an Elixir beginner, so if you see any issues or bad practice(s), please let me know, it would help me a lot. I want to learn.

## Database diagram
If you want to see the databse schema you will be able to see it in this picture


## Installation
For generating PDFs on Unix-based environments, ``` wkhtmltopdf ``` package must be installed.

To start your Phoenix server:

  * Setup the project with `mix setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Contact me
If you have doubts & || suggestions, please reach me out at:
* manuelmenendezalfonso@gmail.com
* @manuelmenendez on Telegram
* @manuelm662 on Twitter
