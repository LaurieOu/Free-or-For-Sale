var React = require('react');
var UserStore = require('../../stores/user');
var apiUtil = require('../../util/apiUtil');
var browserHistory = require('react-router').browserHistory;
var ImageGallery = require('react-image-gallery');

var User = React.createClass({
  getInitialState: function() {
    return {user: UserStore.all()}
  },
  _onChange: function () {
    this.setState({user: UserStore.all()});
  },
  componentWillMount: function() {
    this.userListener = UserStore.addListener(this._onChange);
    apiUtil.fetchSingleUser(this.props.params.userId);
  },
  componentWillUnmount: function() {
    this.userListener.remove();
  },
  render: function() {
    return (
      <div>
        {this.state.user.username}
        <img src="https://pbs.twimg.com/profile_images/497043545505947648/ESngUXG0.jpeg" />
      </div>
    )
  }
});



module.exports = User;
