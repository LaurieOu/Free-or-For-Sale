var Store = require('flux/utils').Store;
var AppDispatcher = require('../dispatcher/dispatcher');
var UserStore = new Store(AppDispatcher);
var UserConstants = require('../constants/user_constants');

var _user = {};

var resetUser = function(user) {
  _user = user;
};

UserStore.all = function() {
  return jQuery.extend({}, _user);
}


UserStore.__onDispatch = function(payload) {
  switch(payload.actionType) {
    case UserConstants.USER_RECEIVED:
      resetUser(payload.user);
      UserStore.__emitChange();
      break;
    }
};



module.exports = UserStore;
