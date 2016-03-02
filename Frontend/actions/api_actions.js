var AppDispatcher = require('../dispatcher/dispatcher');
var ListingsConstants = require('../constants/listings_constants');
var CategoriesConstants = require('../constants/categories_constants');
var CommentsConstants = require('../constants/comments_constants');
var LikeConstants = require('../constants/likes_constants');


var ApiActions = {
  receiveAllListings: function(listings) {
    AppDispatcher.dispatch({
      actionType: ListingsConstants.LISTINGS_RECEIVED,
      listings: listings
    });
  },
  receiveNewListing: function(newlisting) {
    AppDispatcher.dispatch({
      actionType: ListingsConstants.NEW_LISTING_RECEIVED,
      newListing: newlisting
    });
  },
  fetchAllCategories: function(categories) {
    AppDispatcher.dispatch({
      actionType: CategoriesConstants.CATEGORIES_RECEIVED,
      categories: categories
    });
  },
};

module.exports = ApiActions;
