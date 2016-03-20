var Store = require('flux/utils').Store;
var AppDispatcher = require('../dispatcher/dispatcher');
var ErrorStore = new Store(AppDispatcher);
var ErrorConstants = require('../constants/error_constants');

var _errors = [];

ErrorStore.errors = function () {
  return _errors;
};

ErrorStore.resetErrors = function() {
  _errors = false;
};

function handleErrors (data) {
  _errors = true;
  ErrorStore.__emitChange();
};

ErrorStore.__onDispatch = function (payload) {
  switch (payload.actionType) {
    case ErrorConstants.ERROR:
      handleErrors(payload.error);
      break;
  }
};
module.exports = ErrorStore;
