var React = require('react');
var ListingsStore = require('../../stores/listings');
var apiUtil = require('../../util/apiUtil');
var Categories = require('../categories/categories');
var LoginBar = require('../navigation/login');
var MostRecentItems = require('../categories/mostRecentItemsForm');


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

    return(
      <article>
        <LoginBar />
        <Categories />
        <MostRecentItems />
        <ul>
          {this.state.listings.map(function(listing) {
            //make this ListingIndexItem
            return (<li key={listing.id}>Title: {listing.title};  Description: {listing.description}</li>)
          })}
        </ul>
      </article>
    );
  }
});

module.exports = Listings;
