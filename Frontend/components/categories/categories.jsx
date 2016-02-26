var React = require('react');
var CategoriesStore = require('../../stores/categories');
var apiUtil = require('../../util/apiUtil');
var NewListing = require('../Listings/newListing');




var Categories = React.createClass({
  getInitialState: function() {
    return {categories: CategoriesStore.all(), category_id: "", renderNewListing: false}
  },
  _onChange: function () {
    this.setState({categories: CategoriesStore.all()});
  },
  componentDidMount: function() {
    this.categoriesListener = CategoriesStore.addListener(this._onChange);
    apiUtil.fetchAllCategories();
  },
  compomentWillUnmount: function() {
    this.categoriesListener.remove();
  },
  handleClick: function(e) {

    apiUtil.fetchSingleListings(e.currentTarget.id);
    this.setState({category_id: e.currentTarget.id, renderNewListing: true});


  },
  render: function() {
    if (this.state.renderNewListing){
     var newListingForm =  <NewListing category_id={this.state.category_id}/>;
   }else{
     var newListingForm = "";
   }

    return(
      <article>

        <ul>
          {this.state.categories.map(function(category) {
            return (
              <article>
                <li key={category.id} id={category.id} onClick={this.handleClick} className="category">{category.category_name}</li>
              </article>)
          }, this)}
        </ul>
        {newListingForm}
      </article>
    );
  }
});

module.exports = Categories;
