var React = require('react');
var ReactDOM = require('react-dom');
var Listings = require('./components/Listings/listings');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;
var IndexRoute = ReactRouter.IndexRoute;




var routes = (
  <Route path="/" >
    <IndexRoute component={Listings}/>
  </Route>
);



document.addEventListener("DOMContentLoaded", function () {
  ReactDOM.render(
    <Router>{routes}</Router>,
    document.getElementById('root')
  );
});
