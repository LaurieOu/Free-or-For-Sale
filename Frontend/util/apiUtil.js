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
};

// createNewListing: function(listing, callback){
//   $.ajax({
//     url: "api/listings",
//     method: "POST",
//     data: { listing: listing },
//     success: function (listing) {
//       callback();
//     },
//     error: function(error) {
//       ApiActions.formError(error);
//     }
//   });
// },

module.exports = apiUtil;
