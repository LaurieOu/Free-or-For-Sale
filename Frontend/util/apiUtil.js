var ApiActions = require('../actions/api_actions');

var apiUtil = {
  fetchAllListings: function() {
    $.ajax({
      url: 'api/listings',
      type: 'GET',
      success: function (listings) {
        ApiActions.receiveAllListings(listings);
      }
    });
  },
  fetchListingsFromCategory: function(category) {
    $.ajax({
      url: 'api/listings',
      data: {"category_name": category.category},
      type: 'GET',
      success: function (listings) {
        ApiActions.receiveAllListings(listings);
      }
    });
  },
  fetchAllCategories: function() {
    $.ajax({
      url: 'api/categories',
      type: 'GET',
      success: function (categories) {
        ApiActions.fetchAllCategories(categories);
      }
    });
  },
  createListing: function(newlisting){
    $.post('api/listings', { listing: newlisting }, function(listing) {
      ApiActions.receiveNewListing(listing);
      });
    },
  createComment: function(newComment) {
    $.post('api/comments', {comment: newComment}, function(listings) {
      ApiActions.receiveAllListings(listings);
    });
  },
  createLike: function(newLike) {
    debugger
    //newLike = {listing_id: this.props.listing_id}
    $.post('api/likes', {like: newLike}, function(newLike) {
      ApiActions.receiveNewLike(newLike);
    });
  },
  deleteLike: function(newLike) {
    $.ajax({
      url: 'api/likes/' + newLike.listing_id,
      type: 'DELETE',
      success: function (likes) {
        ApiActions.removeLike(likes);
      }
    });
  }
};

module.exports = apiUtil;
