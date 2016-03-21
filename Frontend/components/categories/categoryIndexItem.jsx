var React = require('react');
var browserHistory = require('react-router').browserHistory;



var CategoryIndexItem = React.createClass({
  handleClick: function(e) {
    e.preventDefault();
    browserHistory.push(this.props.category.category_name);

  },
  render: function() {
    return(
    <li onClick={this.handleClick} className="categoryIndexItem"><a href="#" className="pill-text">{this.props.category.category_name}</a></li>)
  }
});

module.exports = CategoryIndexItem;
