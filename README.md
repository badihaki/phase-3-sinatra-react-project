# Phase 3 Project
## Backend Setup

This repository has all the starter code needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

## Project Info
This is my project for Phase 3, the backend repository, specifically. As such, this repository contains all my code for my models, controllers, and routes, using ActiveRecord as a base. The high-level concept of this app is to have a tool that specializes in the documentation of restaurants, bartenders and their cocktails they each know. I believe a tool like this is needed in the world of fine-dining, as craft cocktails have become a big draw for many restaurants, and properly crediting the original mixologist is a service sorely needed in the industry.

### Models
In my 'app/models' folder, you'll find the code for each model.
- The 'Restaurant' model holds the data for the restaurants, which have many bartenders and many cocktails through bartenders
- The 'Bartender' model holds data for bartenders, which belong to a restaurant, and may have many cocktails
- The 'Cocktail' model holds data for cocktails, and each belongs to a bartender.

The associations for each model are done through easy-to-read macros provided by ActiveRecord::Base.

### Controller
I have leveraged the extensively helpful built-in methods provided by ActiveRecord to manage my routes in my Application Controller, found in the 'app/controllers' folder. I've loaded full CRUD routes the Bartender and Cocktail tables, and Read and Create paths for Restaurants.

Haki's Frontend Repo: https://github.com/badihaki/phase-3-project
Haki's back-end repo: https://github.com/badihaki/phase-3-sinatra-react-project