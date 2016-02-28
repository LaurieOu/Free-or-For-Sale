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
  fetchSingleListings: function(id) {
    $.ajax({
      url: 'api/listings',
      data: {"categories": id},
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
  }
};

module.exports = apiUtil;
