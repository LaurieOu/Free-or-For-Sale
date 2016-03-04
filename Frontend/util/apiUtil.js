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
      data: {"category_name": category},
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
    $.post('api/likes', {like: newLike}, function(listings) {
      ApiActions.receiveAllListings(listings);
    });
  },
  deleteLike: function(newLike) {
    $.ajax({
      url: 'api/likes/' + newLike.listing_id,
      type: 'DELETE',
      success: function (listings) {
        ApiActions.receiveAllListings(listings);
      }
    });
  },
};

module.exports = apiUtil;
