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
    browserHistory.push("/Home");
  },
  handleProfileClick: function() {
    $.ajax({
      url: "/users/" + window.user.id,
      method: "GET",
      success: function() {
        window.location='session/new'
      }
    });
  },
  render: function() {
    var login;
    if (window.user.username) {
      login = (
        <ul className="nav nav-pills">
          <li role="presentation" className="active" onClick={this.handleHomeClick}><a href="#" className="pill-text" >Home</a></li>
          <li role="presentation"  onClick={this.handleProfileClick}><a href="#" className="pill-text">Profile</a></li>
          <li role="presentation"  onClick={this.handleSignOutClick}><a href="#" className="pill-text">Log Out</a></li>
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
