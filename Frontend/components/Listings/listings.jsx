var React = require('react');
var ListingsStore = require('../../stores/listings');
var apiUtil = require('../../util/apiUtil');
var Categories = require('../categories/categories');
var LoginBar = require('../navigation/login');
var NewComment = require('../comments/newComment');


// rename: ListingsIndex, ListingsIndexItem

var Listings = React.createClass({
  getInitialState: function() {
    return {listings: ListingsStore.all()}
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
  displayComments: function (listing) {
    var comments = listing.comments.map(function(comment) {
      return <li>{comment.user}: {comment.body}</li>
    })

    return comments;
  },
  render: function() {
    var that = this;

    return(
      <article>
        <LoginBar />
        <Categories />
        <ul>
          {this.state.listings.map(function(listing) {
            //make this ListingIndexItem
            return (
                  <div>
                    <li>Title: {listing.title}</li>
                    <li>Description: {listing.description}</li>
                    {that.displayComments(listing)}
                    <br/>
                    <NewComment listing_id={listing.id}/>
                    <br/><br/>
                  </div>
            )})}
        </ul>
      </article>
    );
  }
});

module.exports = Listings;
