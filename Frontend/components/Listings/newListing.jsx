var React = require('react');
var apiUtil = require('../../util/apiUtil');

// var History = require('react-router').History;


var NewListing = React.createClass(
  {
    getInitialState: function(){
      return {
        expanded: false,
        formInfo: {title: "", description: "", price: "", address: "", category_id: "", university_id: ""}
      };
    },
    toggle: function(event){
      event.preventDefault();
      this.setState({expanded: true});
    },
    handleTitleChange: function(e) {
      this.setState({title: e.target.value});
    },
    handleDescriptionChange: function(e) {
      this.setState({description: e.target.value});
    },
    handlePriceChange: function(e) {
      this.setState({price: e.target.value});
    },
    handleAdressChange: function(e) {
      this.setState({address: e.target.value});
    },
    handleSubmit: function(e) {
      e.preventDefault();
      newListing = {};

      Object.keys(this.state.formInfo).forEach(function (key) {
        { newListing[key] = this.state.formInfo[key]; }
      }.bind(this))

      apiUtil.createListing(newListing);
    },
    render: function() {
      var extraContent = "";
      if(this.state.expanded) {
        extraContent = (
          <div>
            <input value="Add a price" name="listing[price]" onChange={this.handlePriceChange}></input><br/>
            <input value="Address" name="listing[address]" onChange={this.handleAdressChange}></input><br/>
            <input value="Describe your item (optional)" name="listing[description]" onChange={this.handleDescriptionChange}></input><br/>
            <input type="submit" value="Submit"></input>
          </div>
        )
      };

      return (
        <form onSubmit={this.handleSubmit}>
          <input onClick={this.toggle}
           value="What are you selling?"
           name="listing[title]"
           onChange={this.handleTitleChange}></input><br/>

          {extraContent}
        </form>
      )
    }
  });

module.exports = NewListing;

// params.require(:listing).permit(
//   :title, :description,
//   :price, :address,
//   :university_id, :user_id,
//   :category_id
//   )
