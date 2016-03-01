var React = require('react');
var ListingsStore = require('../../stores/listings');
var apiUtil = require('../../util/apiUtil');
var NewComment = require('../comments/newComment');
var InfiniteScroll = require('react-infinite-scroll')(React);
var InfiniteScroll = React.addons.InfiniteScroll;
var browserHistory = require('react-router').browserHistory;



var Listings = React.createClass({
  getInitialState: function() {
    //
    // function
		// window.addEventListener("scroll", this.handleScroll);
		// return{
		// 	comments:[], //comment array initially we have zero comment
		// 	page:0,      //for pagination
		// 	loadingFlag:false,   //to avoid multiple fetch request if user is keep scrolling
		// 	url:"loadComment.php"  //url to fetch comments in json format
		// }


    return {listings: ListingsStore.all(), liked: false}
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
  displayLikers: function(listing) {
    return (
     listing.likersListing.map(function(liker) {
       return(<li>{liker.username}</li>)
     })
   )
  },
  onNewComment: function() {
    this.setState({listings: ListingsStore.all()});
  },
  handleLikeClick: function(e) {
    e.preventDefault();
    if (this.state.liked === false ) {
      apiUtil.createLike({listing_id: e.target.id});
      this.setState({liked: true});
    } else {
      apiUtil.deleteLike({listing_id: e.target.id});
      this.setState({liked: false});
    }

  },
  render: function() {
    var that = this;
    var browserHistory = require('react-router').browserHistory;
    return(
      <div className="university-page-container">
          <ul className="listing-container">
            {this.state.listings.map(function(listing, i) {
              //make this ListingIndexItem
              return (
                    <li key={i}>
                      <ul>
                        <li>Title: {listing.title}</li>
                        <li>Description: {listing.description}</li>
                        <a href="#" className="btn btn-default" onClick={that.handleLikeClick} id={listing.id}><span className="glyphicon glyphicon-thumbs-up" onClick={that.handleLikeClick} id={listing.id} ></span></a>
                        {that.displayLikers(listing)}
                        {that.displayComments(listing)}
                        <NewComment onNewComment={that.onNewComment} listing_id={listing.id}/>
                      </ul>
                    </li>
              )})}
          </ul>
      </div>
    );
  }
});

module.exports = Listings;
