var React = require('react');
var ListingsStore = require('../../stores/listings');
var apiUtil = require('../../util/apiUtil');
var NewComment = require('../comments/newComment');
var InfiniteScroll = require('react-infinite-scroll')(React);
var InfiniteScroll = React.addons.InfiniteScroll;
var browserHistory = require('react-router').browserHistory;
var Likes = require('../likes/likes');



var Listings = React.createClass({
  getInitialState: function() {
    return {listings: ListingsStore.all()}
  },
  _onChange: function () {
    this.setState({listings: ListingsStore.all()});
  },
  componentDidMount: function() {
    var category = window.location.pathname.slice(1);
    this.listingsListener = ListingsStore.addListener(this._onChange);
    apiUtil.fetchListingsFromCategory({category});
  },
  componentWillReceiveProps: function(newProps) {
    var category = window.location.pathname.slice(1);
    this.listingsListener = ListingsStore.addListener(this._onChange);
    apiUtil.fetchListingsFromCategory({category});
  },
  componentWillUnmount: function() {
    this.listingsListener.remove();
  },
  displayComments: function (listing) {
    var comments = listing.comments.map(function(comment) {
      return (
              <div>
                <li>{comment.user}: {comment.body}</li><br/>
              </div>
               )
    })
    return comments;
  },
  onNewComment: function() {
    this.setState({listings: ListingsStore.all()});
  },
  render: function() {
    var that = this;
    var browserHistory = require('react-router').browserHistory;
    return(
      <div>
          <ul className="container-for-listing-container">
            {this.state.listings.map(function(listing, i) {
              return (
                    <li key={i} className="listing-container">
                      <ul>
                        <li>Title: {listing.title}</li>
                        <li>Description: {listing.description}</li>

                        <Likes listing_id={listing.id} listing={listing}/>


                        {that.displayComments(listing)}
                        <NewComment onNewComment={that.onNewComment} listing_id={listing.id} />
                      </ul>
                    </li>
              )})}
          </ul>
      </div>
    );
  }
});

module.exports = Listings;
