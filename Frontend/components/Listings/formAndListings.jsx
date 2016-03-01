var NewListingForm = require('./newListing');
var Listing = require('./listings');
var React = require('react');

var FormAndListing = React.createClass({
  render: function () {
    return (
      <div>
        <NewListingForm />
        <Listing  />
      </div>
    )
  }
});

module.exports = FormAndListing;
