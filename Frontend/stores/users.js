var Store = require('flux/utils').Store;
var AppDispatcher = require('../dispatcher/dispatcher');
var UsersStore = new Store(AppDispatcher);



module.exports = UsersStore;