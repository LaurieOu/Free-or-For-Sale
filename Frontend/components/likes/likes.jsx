// var React = require('react');
// var LikeStore = require('../../stores/like');
// var apiUtil = require('../../util/apiUtil');
//
// var Likes = React.createClass({
//   getInitialState: function() {
//     return {likes: LikeStore.all(), liked: false}
//   },
//   _onChange: function () {
//     this.setState({likes: LikeStore.all()});
//   },
//   handleLikeClick: function(e) {
//     e.preventDefault();
//     if (this.state.liked === false ) {
//       apiUtil.createLike({listing_id: this.props.listing_id});
//       this.setState({liked: true});
//     } else {
//       apiUtil.deleteLike({listing_id: this.props.listing_id});
//       this.setState({liked: false});
//     }
//   },
//   componentDidMount: function() {
//     this.likeListener = LikeStore.addListener(this._onChange);
//   },
//   componentWillUnmount: function() {
//     this.likeListener.remove();
//   },
//   displayLikers: function(listing) {
//     return (
//        listing.likersListing.map(function(liker) {
//          return(<li key={liker.username}>{liker.username}</li>)
//        })
//      );
//   },
//   render: function() {
//     return(
//       <div>
//         <a href="#" className="btn btn-default" onClick={this.handleLikeClick}><span className="glyphicon glyphicon-thumbs-up" onClick={this.handleLikeClick} ></span></a>
//         {this.displayLikers(this.props.listing)}
//       </div>
//     )
//   }
// });
//
// module.exports = Likes;
