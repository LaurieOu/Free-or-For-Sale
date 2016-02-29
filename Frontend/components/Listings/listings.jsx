var React = require('react');
var ListingsStore = require('../../stores/listings');
var apiUtil = require('../../util/apiUtil');
var Categories = require('../categories/categories');
var LoginBar = require('../navigation/login');
var NewComment = require('../comments/newComment');
var InfiniteScroll = require('react-infinite-scroll')(React);
var InfiniteScroll = React.addons.InfiniteScroll;


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
    this.listingsListener = ListingsStore.addListener(this._onChange);
    apiUtil.fetchAllListings();
  },
  compomentWillUnmount: function() {
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

    return(
      <div className="university-page-container">

        <LoginBar/>
        <Categories />
          <ul className="listing-container">
            {this.state.listings.map(function(listing) {
              //make this ListingIndexItem
              return (
                    <div>
                      <li>Title: {listing.title}</li>
                      <li>Description: {listing.description}</li>
                      <a href="#" className="btn btn-default" onClick={that.handleLikeClick} id={listing.id}><span className="glyphicon glyphicon-thumbs-up" onClick={that.handleLikeClick} id={listing.id} ></span></a>
                      {that.displayLikers(listing)}
                      {that.displayComments(listing)}
                      <br/>
                      <NewComment onNewComment={that.onNewComment} listing_id={listing.id}/>
                      <br/><br/>
                    </div>
              )})}
          </ul>
      </div>
    );
  }
});

module.exports = Listings;
