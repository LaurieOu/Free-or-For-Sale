var React = require('react');
var CategoriesStore = require('../../stores/categories');
var apiUtil = require('../../util/apiUtil');


var Categories = React.createClass({
  getInitialState: function() {
    return {categories: CategoriesStore.all(),
            selectedCategory: ""}
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
    console.log(e.currentTarget.innerHTML);
    this.setState({selectedCategory: e.currentTarget.innerHTML});
  },
  render: function() {
    return(
      <article>
        <ul>
          {this.state.categories.map(function(category) {
            return (<li key={category.id} onClick={this.handleClick} className="category">{category.category_name}</li>)
          }, this)}
        </ul>
      </article>
    );
  }
});

module.exports = Categories;
