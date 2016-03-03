var React = require('react');
var apiUtil = require('../../util/apiUtil');

var NewComment = React.createClass({
  getInitialState: function() {
    return { comment: ""};
  },

  handleKeydown: function(e) {
    e.preventDefault();
    this.setState({ comment: e.target.value});
  },

  submitComment: function(e) {
    e.preventDefault();
    apiUtil.createComment({body: this.state.comment, listing_id: this.props.listing_id})
    this.props.onNewComment(e);
    this.setState({comment: ""});
  },

  render: function() {
    var commentForm = (<form onSubmit={this.submitComment}>
      <input className="comment-form-input"
        type="text"
        id="comment-form-input-id"
        placeholder="Leave a comment..."
        onChange={this.handleKeydown}
        value={this.state.comment}/>
    </form>
    )

    // console.log(form);
    return (
      <div>
        {commentForm}
      </div>
    );
  }


});

module.exports = NewComment;
