# FresherNote

[Heroku link][heroku] **NB:** This should be a link to your production site

[heroku]: http://www.herokuapp.com

## Minimum Viable Product

Free or For Sale is a web application inspired by the Facebook Group Free and
For Sale built using Ruby on Rails and React.js.
Free or For Sale allows users to:

<!-- This is a Markdown checklist. Use it to keep track of your
progress. Put an x between the brackets for a checkmark: [x] -->

- [ ] Create an account
- [ ] Log in / Log out
- [ ] Locate specific university's Free or For Sale page
- [ ] See sale items from 11 different categories
- [ ] Users can Create, read, edit, and delete Listings
- [ ] Buyers and sellers can message each other
- [ ] Users can like, comment, or star a listing
- [ ] Users can track their sell and stared items

## Design Docs
* [View Wireframes][views]
* [React Components][components]
* [Flux Stores][stores]
* [API endpoints][api-endpoints]
* [DB schema][schema]

[views]: ./docs/views.md
[components]: ./docs/components.md
[stores]: ./docs/stores.md
[api-endpoints]: ./docs/api-endpoints.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: Backend setup and User Authentication (1 day)
### University Store

**Objective:** In Phase 1, I will begin by implementing user signup and
authentication (using BCrypt). If a user clicks the 'find your university'
button, they will be directed to a page with a drop down box where they can
select then view any university's Free and For Sale page.

- [ ] create new project
- [ ] create `User` model
- [ ] create `University` model
- [ ] create `University` Flux/React components
- [ ] authentication
- [ ] setup Webpack & Flux scaffold
- [ ] user signup/signin pages
- [ ] directs to University's Free or For Sale page after sign in
- [ ] tab on side that has all the available universities. If clicked, directs to the university's FOFS page

### Phase 2: Categories and Listings Model, API, and basic
### APIUtil/React/Flux (2 days)

**Objective:** Creating the University's Page. 11 categories will be created
with working buttons to the category's items page. The default category will
be 'Most Recent.' Create pop up 'Sell Something' box. Ensure that only users
from that university have access to the 'Sell Something' box. Listings can be
created, read, edited and destroyed with the user interface only if it
belongs to User.  

- [ ] create `Category` model
- [ ] create `Listing` model
- [ ] create `Listing` Flux/React components
- [ ] CRUD API for Listings (`ListingsController`)
- [ ] seed the database with a small amount of test data
- [ ] jBuilder views for Listings
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.


### Phase 3: Likes, Comment, Starred, and Pictures Model, API, and
### basic APIUtil, REACT, FlUX Components (1.5 days)

**Objective:** Add likes, comments, starred, pictures and 'comment
user' to the listing. Pictures should maximize and have a left-right option.

- [ ] create `Likes` model
- [ ] create `Comments` model
- [ ] create `Starred` model
- [ ] create `Pictures` model
- [ ] seed the database with a small amount of test data
- [ ] jBuilder views for all those models
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.

### Phase 4: Messages and Message Box Model, API, and
### basic APIUtil, REACT, FlUX Components (1 days)

**Objective:** Add a 'Message Me' button to the listing. When a user clicks
the button, a FB-like messaging system pops up.

- [ ] create `Message` model
- [ ] create `Message Box` model
- [ ] seed the database with a small amount of test data
- [ ] jBuilder views for all those models
- [ ] setup Webpack & Flux scaffold
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.

### Phase 5: User's Home Page and basic APIUtil, REACT, FlUX Components (1 day) BONUS

**Objective:** A page that has two tabs listing items the User is selling or
items the User starred. The listing will have an edit(for items you're selling),
date posted, price and sold/delete button.

- [ ] jBuilder views for all those models
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.



### Phase 6: Start Styling (0.5 days)

**Objective:** Finishing touches on everything

- [ ] create a basic style guide
- [ ] position elements on the page
- [ ] add basic colors & styles



[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
