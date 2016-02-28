var React = require('react');
var apiUtil = require('../../util/apiUtil');

var NewComment = React.createClass({
  handleKeydown: function(e) {
    if (e.keyCode === 13) {
      e.preventDefault();
      apiUtil.createComment({body: e.target.value, listing_id: this.props.listing_id})
    }
  },
  render: function() {
    return (
      <div>
        <form>
          <textarea className="comment-form-input" type="text" id="comment-form-input-id" placeholder="Leave a comment..." onKeyUp={this.handleKeydown}></textarea>
        </form>
      </div>
    );
  }


});

module.exports = NewComment;
