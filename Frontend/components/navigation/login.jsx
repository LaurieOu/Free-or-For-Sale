var React = require('react');
var browserHistory = require('react-router').browserHistory;
var apiUtil = require('../../util/apiUtil');


var Login = React.createClass({

  handleSignOutClick: function() {
    $.ajax({
      url: "/session",
      method: "DELETE",
      success: function() {
        delete window.user.username;
        window.location='session/new'
      }
    });
  },
  handleHomeClick: function() {
    apiUtil.fetchAllListings();
    browserHistory.push("/");
  },
  render: function() {
    var login;
    if (window.user.username) {
      login = (
        <ul className="nav nav-pills">
          <li role="presentation" className="active" onClick={this.handleHomeClick}><a href="#">Home</a></li>
          <li role="presentation"><a href="#">Profile</a></li>
          <li role="presentation"  onClick={this.handleSignOutClick}><a href="#">Log Out</a></li>
        </ul>
      );
    }

    return (
      <nav className="navbar navbar-inverse">
        <div className="container">
          {login}
        </div>
      </nav>
    );
  }
});

module.exports = Login;
