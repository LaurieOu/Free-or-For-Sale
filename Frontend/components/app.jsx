var React = require('react');
var LoginBar = require('./navigation/login');
var Categories = require('./categories/categories');
var FormAndListings = require('./Listings/formAndListings');
var browserHistory = require('react-router').browserHistory;


var App = React.createClass({
  render: function() {

    var that = this;

    return(
      <div className="university-page-container">
        <LoginBar />
        <Categories />

        <div className="everything-container">
          {this.props.children}
        </div>
      </div>
    );
  }
});

module.exports = App;
