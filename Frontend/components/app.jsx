var React = require('react');
var LoginBar = require('./navigation/login');
var Categories = require('./categories/categories');
var NewListingForm = require('./Listings/newListing');
var browserHistory = require('react-router').browserHistory;


var App = React.createClass({
  render: function() {

    var that = this;

    return(
      <div className="university-page-container">
        <LoginBar />
        <Categories />

        <div>
          {this.props.children}
        </div>
      </div>
    );
  }
});

module.exports = App;
