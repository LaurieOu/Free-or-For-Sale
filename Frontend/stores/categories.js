var Store = require('flux/utils').Store;
var CategoriesConstants = require('../constants/categories_constants');
var AppDispatcher = require('../dispatcher/dispatcher');
var CategoriesStore = new Store(AppDispatcher);

var _categories = [];

var resetCategories = function(categories) {
  _categories = categories;
};

CategoriesStore.all = function(categories) {
  return _categories.slice(0);
};

CategoriesStore.__onDispatch = function (payload) {
switch(payload.actionType) {
  case CategoriesConstants.CATEGORIES_RECEIVED:
    resetCategories(payload.categories);
    CategoriesStore.__emitChange();
    break;
  }
};

module.exports = CategoriesStore;
