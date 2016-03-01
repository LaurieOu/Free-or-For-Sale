var React = require('react');
var apiUtil = require('../../util/apiUtil');
var browserHistory = require('react-router').browserHistory;



var CategoryIndexItem = React.createClass({
  handleClick: function(e) {
    e.preventDefault();
    apiUtil.fetchListingsFromCategory(this.props.category.category_name);
    browserHistory.push(this.props.category.category_name);

  },
  render: function() {
    return(
    <li onClick={this.handleClick} className="categoryIndexItem"><a href="#">{this.props.category.category_name}</a></li>)
  }
});

module.exports = CategoryIndexItem;
