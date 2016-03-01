var Store = require('flux/utils').Store;
var LikeConstants = require('../constants/likes_constants');
var AppDispatcher = require('../dispatcher/dispatcher');
var LikesStore = new Store(AppDispatcher);

var _likes = [];

var resetLikes = function(likes) {
  _likes = likes;
};

var addNewLike = function(newLike) {
  _likes.unshift(newLike)
};

LikesStore.all = function(likes) {
  return _likes.slice(0);
}

LikesStore.__onDispatch = function(payload) {
  switch(payload.actionType) {
    case LikeConstants.LIKES_RECEIVED:
      resetLikes(payload.likes);
      LikesStore.__emitChange();
      break;
    case LikeConstants.NEW_LIKE_RECEIVED:
      addNewLike(payload.newLike);
      LikesStore.__emitChange();
      break;
    case LikeConstants.REMOVE_LIKE:
      resetLikes(payload.likes);
      LikesStore.__emitChange();
      break;
  }
};

module.exports = LikesStore;
