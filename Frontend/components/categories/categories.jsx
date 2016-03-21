var React = require('react');
var CategoriesStore = require('../../stores/categories');
var apiUtil = require('../../util/apiUtil');
var CategoryIndexItem = require('./categoryIndexItem');
var browserHistory = require('react-router').browserHistory;



var Categories = React.createClass({
  getInitialState: function() {
    return {categories: CategoriesStore.all(), category_id: ""}
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
  render: function() {
    return(
      <article>

        <ul className="nav nav-pills nav-stacked span2 category-box">
          {this.state.categories.map(function(category, i) {
            return (
                <CategoryIndexItem key={i} category={category} history={this.history}/>
            );
          }, this)}
        </ul>
      </article>
    );
  }
});

module.exports = Categories;
