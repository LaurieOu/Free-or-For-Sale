var React = require('react');
var browserHistory = require('react-router').browserHistory;
var apiUtil = require('../../util/apiUtil');
var Link = require('react-router').Link

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
  //   console.log(window.user.username);
  //   alert("CLICKED");
  //
  // },
  render: function() {
    var login;
    var url = "/user/" + window.user.id
    if (window.user.username) {
      login = (
        <ul className="nav nav-pills">
          <li role="presentation" className="active" onClick={this.handleHomeClick}><a href="#" className="pill-text" >Home</a></li>
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
