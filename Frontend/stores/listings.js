var Store = require('flux/utils').Store;
var ListingsConstants = require('../constants/listings_constants');
var AppDispatcher = require('../dispatcher/dispatcher');
var ListingsStore = new Store(AppDispatcher);

var _listings = [];

var resetListings = function(listings) {
  _listings = listings;
};

var addNewListing = function(newListing) {
  _listings.push(newListing);
};

ListingsStore.all = function(listings) {
  return _listings.slice(0);
};

ListingsStore.hasLike = function(listing_id) {
  var alreadyLiked = false;
  var selectedListing = "";

  _listings.forEach(function(listing) {
    if(listing.id === Number(listing_id)) {
      selectedListing = listing
    }
  });
  selectedListing.likersListing.forEach(function(liker) {
    if (liker.username === window.user.username) {
      alreadyLiked = true;
    }
  });

  return alreadyLiked;
};

ListingsStore.__onDispatch = function (payload) {
switch(payload.actionType) {
  case ListingsConstants.LISTINGS_RECEIVED:
    resetListings(payload.listings);
    ListingsStore.__emitChange();
    break;
  case ListingsConstants.NEW_LISTING_RECEIVED:
    addNewListing(payload.newListing);
    ListingsStore.__emitChange();
    break;
  }
};

module.exports = ListingsStore;
