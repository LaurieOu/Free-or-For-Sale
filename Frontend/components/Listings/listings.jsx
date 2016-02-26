var React = require('react');
var ListingsStore = require('../../stores/listings');
var apiUtil = require('../../util/apiUtil');
var Categories = require('../categories/categories');
var LoginBar = require('../navigation/login');


var Listings = React.createClass({
  getInitialState: function() {
    return {listings: ListingsStore.all() }
  },
  _onChange: function () {
    this.setState({listings: ListingsStore.all()});
  },
  componentDidMount: function() {
    this.listingsListener = ListingsStore.addListener(this._onChange);
    apiUtil.fetchAllListings();
  },
  compomentWillUnmount: function() {
    this.listingsListener.remove();
  },
  render: function() {
    debugger;
    return(
      <article>
        <LoginBar />
        <Categories />
        <ul>
          {this.state.listings.map(function(listing) {
            return (<li key={listing.id}>Title: {listing.title};  Description: {listing.description}</li>)
          })}
        </ul>
      </article>
    );
  }
});

module.exports = Listings;
