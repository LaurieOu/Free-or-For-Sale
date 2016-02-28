var Store = require('flux/utils').Store;
var CommentsConstants = require('../constants/comments_constants');
var AppDispatcher = require('../dispatcher/dispatcher');
var CommentsStore = new Store(AppDispatcher);

var _comments = [];

var resetComments = function(comments) {
  _comments = comments;
};

var addNewComment = function(newComment {
  _comments.unshift(newComment);
};

CommentsStore.__onDispatch = function (payload) {
switch(payload.actionType) {
  case CommentsConstants.NEW_COMMENT_RECEIVED:
    addNewComment(payload.newComment);
    CommentsStore.__emitChange();
    break;
  }
};

module.exports = CommentsStore;
