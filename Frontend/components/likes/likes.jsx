var React = require('react');
var LikeStore = require('../../stores/likes');
var apiUtil = require('../../util/apiUtil');

var Likes = React.createClass({
  getInitialState: function() {
    return {likes: LikeStore.all(), liked: false}
  },
  _onChange: function () {
    this.setState({likes: LikeStore.all()});
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
  displayLikers: function(listing) {
      return (
       listing.likersListing.map(function(liker, i) {
         return(<li key={i}>{liker.username}</li>)
       })
     )
  },
  render: function() {
    return(
      <a href="#" className="btn btn-default" onClick={that.handleLikeClick} id={listing.id}><span className="glyphicon glyphicon-thumbs-up" onClick={that.handleLikeClick} id={listing.id} ></span></a>
      {that.displayLikers(listing)}
    )
  }
})
