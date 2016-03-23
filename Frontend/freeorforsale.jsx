var React = require('react');
var ReactDOM = require('react-dom');
var FormAndListings = require('./components/Listings/formAndListings');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;
var IndexRoute = ReactRouter.IndexRoute;
var browserHistory = require('react-router').browserHistory;
var App = require('./components/app');
var User = require('./components/user/user')



var routes = (
  <Route path="/" component={App} >
    <Route path=":category" component={FormAndListings} />
  </Route>
);



document.addEventListener("DOMContentLoaded", function () {
  ReactDOM.render(
    <Router history={browserHistory}>{routes}</Router>,
    document.getElementById('root')
  );
});
