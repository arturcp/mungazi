# Mungazi

Mungazi is a non-profit organization created in 2015 with the objective of
helping refugees to adapt to their new realities.


# Requirements

* ruby 2.5.0
* rails >= 5.2.0

## Installation

To install the website in your local machine, run these commands in the terminal:

* Clone the repository: `git clone git@github.com:arturcp/mungazi.git`
* Set your environment by creating a .env file. You can use the .env.example as
a template: `cp .env.example .env` (remember to fill in the data in the .env file)
* Create the database by running `bin/rake db:create`
* Update the schema by running `bin/rake db:migrate`

Optionally, you can seed your database with initial data by running:

```
  bin/rake db:seed
```

If you want to populate the database with fake data, you can run the seed:

```
  bin/rake db:seed
```


## Tests

To execute the tests, run:

```
  bin/rspec
```

## Run

After configuring the .env file and creating the database, all you need to do in
order to run the website is to go to the terminal, in the project's folder, and
run:

```
  bin/rails server
```

It will start the server in the default port (3000), so you can just go to your
browser and visit `http://localhost:3000`.

Optionally, you can choose the port. For example, to use the website in the port 3002, run:

```
  bin/rails server -p 3002
```

The Mungazi project has an Admin panel. To access it, go to `http://localhost:3000/admin`
and enter your credentials. If you are running the project from scratch, you
need to create an admin account. To do that, you can run the seeds:

```
  bin/rake db:seed
```

The login and password will be those set on the `.env` file, under the ADMIN_EMAIL
and ADMIN_PASSWORD attributes.

## Templates

* https://www.wowthemes.net/mediumish-free-bootstrap-4-0-html-template-medium-styled/

## Deploy

The website can be hosted anywhere that supports Rails and PostgreSQL. The demo is
hosted at [Heroku](https://www.heroku.com/), in an account that was created
exclusively for Mungazi and is owned by them. If you need access, request it
to Omana.

Once you have credentials, to deploy a new feature or a code change, go to the
terminal and run:

```
  git push heroku master
```

You need to be logged in and have the heroku CLI installed in your computer in
order to execute the deploy. To login in the terminal, run:

```
  heroku login
```

and enter your credentials.
