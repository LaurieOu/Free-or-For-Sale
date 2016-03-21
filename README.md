# Free or For Sale

[Heroku link][heroku]

[heroku]: https://www.freeorforsale.club

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
- [ ] Users can Create and browse Listings
- [ ] Users can like or comment on a listing

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
authentication (using BCrypt).

![alt tag] (http://res.cloudinary.com/ddefvho7g/image/upload/v1458543911/Screen_Shot_2016-03-21_at_12.03.37_AM_xefr1a.png)

Users can create an account and they will be
directed to their universities' page depending on their registered university.
Different universities will have different splash pages.

![alt tag] (http://res.cloudinary.com/ddefvho7g/image/upload/v1458543910/Screen_Shot_2016-03-21_at_12.04.00_AM_ltyiu6.png)

![alt tag] (http://res.cloudinary.com/ddefvho7g/image/upload/v1458543911/Screen_Shot_2016-03-21_at_12.04.27_AM_vuzfib.png)

- [x] create new project
- [x] create `User` model
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
be 'All Listings'

![alt tag] (http://res.cloudinary.com/ddefvho7g/image/upload/v1458544139/Screen_Shot_2016-03-21_at_12.07.51_AM_l4h7pp.png)

Create drop down 'Sell Something' box. Ensure that only users
from that university have access to the 'Sell Something' box. Listings can be
created and read with the user interface only if it
belongs to User.  

![alt tag] (http://res.cloudinary.com/ddefvho7g/image/upload/v1458544140/Screen_Shot_2016-03-21_at_12.08.08_AM_y3wjk8.png)

![alt tag] (http://res.cloudinary.com/ddefvho7g/image/upload/v1458544140/Screen_Shot_2016-03-21_at_12.08.32_AM_eonwf5.png)

- [ ] create `Category` model
- [ ] create `Listing` model
- [ ] create `Listing` Flux/React components
- [ ] CRUD API for Listings (`ListingsController`)
- [ ] seed the database with a small amount of test data
- [ ] jBuilder views for Listings
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.


### Phase 3: Likes, Comment and Pictures Model, API, and
### basic APIUtil, REACT, FlUX Components (1.5 days)

**Objective:** Add likes, comments, pictures and 'comment
user' to the listing. Implemented React-Image-Gallery to have sliding pictures.

![alt tag] (http://res.cloudinary.com/ddefvho7g/image/upload/v1458544406/Screen_Shot_2016-03-21_at_12.12.51_AM_eet6hs.png)

- [ ] create `Likes` model
- [ ] create `Comments` model
- [ ] create `Pictures` model
- [ ] seed the database with a small amount of test data
- [ ] jBuilder views for all those models
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.

<!-- ### Phase 4: Messages and Message Box Model, API, and
### basic APIUtil, REACT, FlUX Components (1 days)

**Objective:** Add a 'Message Me' button to the listing. When a user clicks
the button, a FB-like messaging system pops up.

- [ ] create `Message` model
- [ ] create `Message Box` model
- [ ] seed the database with a small amount of test data
- [ ] jBuilder views for all those models
- [ ] setup Webpack & Flux scaffold
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console. -->
<!--
### Phase 5: User's Home Page and basic APIUtil, REACT, FlUX Components (1 day) BONUS

**Objective:** A page that has two tabs listing items the User is selling or
items the User starred. The listing will have an edit(for items you're selling),
date posted, price and sold/delete button.

- [ ] jBuilder views for all those models
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console. -->



### Phase 4: Start Styling (0.5 days)

**Objective:** Finishing touches on everything

- [ ] create a basic style guide
- [ ] position elements on the page
- [ ] add basic colors & styles



[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
<!-- [phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md -->
