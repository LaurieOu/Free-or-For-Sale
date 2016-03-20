var React = require('react');
var ErrorStore = require('../../stores/errors');

var Error = React.createClass({
  getInitialState: function() {
    return {error: ""};
  },
  onErrorChange: function() {
    if (ErrorStore.errors()) {
      this.setState({error: "Listing submission incomplete: missing information. Please try again."})
    }
  },
  componentDidMount: function() {
    this.errorListener = ErrorStore.addListener(this.onErrorChange);
  },
  componentWillUnmount: function() {
    this.errorListener.remove();
    ErrorStore.resetErrors();
    this.setState({error: ""});
  },
  render: function() {
    return(
      <div className="error-text">
        {this.state.error}
      </div>
    )
  }
});

module.exports = Error;
