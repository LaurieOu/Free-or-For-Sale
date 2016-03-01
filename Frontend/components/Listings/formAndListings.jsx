var NewListingForm = require('./newListing');
var Listing = require('./listings');
var React = require('react');

var FormAndListing = React.createClass({
  render: function () {
    return (
      <div className="form-listing-container">
        <NewListingForm />
        <Listing  />
      </div>
    )
  }
});

module.exports = FormAndListing;
