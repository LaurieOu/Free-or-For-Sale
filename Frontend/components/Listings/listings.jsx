var React = require('react');
var ListingsStore = require('../../stores/listings');
var apiUtil = require('../../util/apiUtil');
var NewComment = require('../comments/newComment');
var browserHistory = require('react-router').browserHistory;
var ImageGallery = require('react-image-gallery');


var Listings = React.createClass({
  getInitialState: function() {
    return {listings: ListingsStore.all(), liked: false};
  },
  _onChange: function () {
    this.setState({listings: ListingsStore.all()});
  },
  componentDidMount: function() {
    this.listingsListener = ListingsStore.addListener(this._onChange);
    apiUtil.fetchListingsFromCategory(this.props.category);
  },
  componentWillReceiveProps: function(newProps) {
    apiUtil.fetchListingsFromCategory(newProps.category);
  },
  componentWillUnmount: function() {
    this.listingsListener.remove();
  },
  displayComments: function (listing) {
      return (
      <ul>
        {listing.comments.map(function(comment) {
          if (comment.image === null) {
            comment.image = "https://lh3.googleusercontent.com/proxy/huJW3Lth9HYrcsW515H_r8rPGZUWw9hF5J_cCiJ7Me5wjuqimdsHoEqyCYTfCO5eoLKtVZuyjLBRi3_z8QeJmw=w426-h240-n"
          }
          return (
              <li><img src={comment.image} className="img-circle comment-img-circle" height="20" weight="20"/>{comment.user}: {comment.body}</li>
            );

        })}
     </ul>
    );
  },
  displayLikers: function(listing) {
    return (
      <ul>
       {listing.likersListing.map(function(liker) {
         return(<li className="likers">{liker.username} </li>);
       })}
     </ul>);
  },
  displayImages: function(listing) {
    var defaultImages = ["http://cdn.paper4pc.com/images/nature-animals-dogs-puppies-wallpaper-3.jpg",
                      "http://www.pics4world.com/vb/nicecache/2/6061showing.jpg",
                    "http://2.bp.blogspot.com/-4HwmYrSvBNs/U_RJt0Gz1gI/AAAAAAAAC7U/j7wyHx83-fQ/s1600/nature-animals-47.jpg"];

    if (listing.images.length === 0) {
      var images = defaultImages.map(function(image) {
        return (
          {
            original: image,
            thumbnail: image,
            originalClass: 'featured-slide',
            thumbnailClass: 'featured-thumb',
            originalAlt: 'original-alt',
            thumbnailAlt: 'thumbnail-alt',
            description: "No pictures of item"
          }
        );
      });} else {
      var images = listing.images.map(function(image) {
        return ({
          original: image.url,
          thumbnail: image.url,
          originalClass: 'featured-slide',
          thumbnailClass: 'featured-thumb',
          originalAlt: 'original-alt',
          thumbnailAlt: 'thumbnail-alt',
        });
      });

    }

    return(
          <ImageGallery
            items={images}
            autoPlay={true}
            slideInterval={4000}
            onSlide={this.handleSlide}/>
    );
  },
  onNewComment: function(e) {
    e.preventDefault();
    this.setState({listings: ListingsStore.all()});
  },
  handleLikeClick: function(e) {
    e.preventDefault();
    if (this.state.liked === false ) {
      apiUtil.createLike({listing_id: e.target.id});
      this.state.liked = true;
      // this.setState({liked: true});
    } else {
      apiUtil.deleteLike({listing_id: e.target.id});
      this.state.liked = false;
      // this.setState({liked: false});
    }

  },
  profileImage: function(listing) {
    if (listing.profile_picture === null) {
      return "http://cdn.pcwallart.com/images/cute-nature-animals-wallpaper-4.jpg";
    } else {
      return listing.profile_picture;
    }
  },
  render: function() {
    var that = this;
    var browserHistory = require('react-router').browserHistory;
    return(
      <div>
          <ul>
            {this.state.listings.map(function(listing) {
              return (
                    <li key={listing.id} className="listing-container">
                      <ul>
                        <li key="pic" className="user-display"><img src={that.profileImage(listing)} className="img-circle"/> {listing.user}</li>
                        <div className="listing-info-box">
                          <li key="title" className="listing-font"><b>Title:</b> {listing.title}</li>
                          <li key="category" className="listing-font"><b>Category:</b> {listing.category}</li>
                          <li key="desc" className="listing-font"><b>Description:</b> {listing.description}</li>
                          <li key="price" className="listing-font"><b>Price:</b> ${listing.price}</li>
                          <li key="timestamp" className="listing-font"><b>Posted:</b> {listing.timestamp}</li>
                        </div>
                      </ul>

                        {that.displayImages(listing)}

                        <br/>
                        <a href="#" className="btn btn-default like-button" onClick={that.handleLikeClick} id={listing.id}><span className="glyphicon glyphicon-thumbs-up" id={listing.id} ></span></a>
                        {that.displayLikers(listing)}

                        <br/>
                        <hr></hr>
                        <div className="comment-box">
                          <label>Comments: </label>
                          {that.displayComments(listing)}
                          <br/>
                          <NewComment onNewComment={that.onNewComment} listing_id={listing.id}/>
                        </div>

                    </li>
              );})}
          </ul>
      </div>
    );
  }
});

module.exports = Listings;
