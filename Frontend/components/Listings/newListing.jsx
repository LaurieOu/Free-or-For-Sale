var React = require('react');
var apiUtil = require('../../util/apiUtil');


// var History = require('react-router').History;

var _categories =
                ["--categories--", "Books",
                "Furniture",
                "Housing",
                "Clothes",
                "Electronics",
                "Free",
                "Services",
                "Jobs/Internships",
                "Music",
                "Other"];

var mostRecentItemsForm = React.createClass(
  {
    getInitialState: function(){
      return {
        expanded: false,
        title: "", description: "",
                   price: "", address: "", category_id: this.props.category_id
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
    handleCategoryChange: function(e) {
      this.setState({category_id: parseInt(e.target.value)});
    },
    handleSubmit: function(e) {
      e.preventDefault();
      apiUtil.createListing(this.state);
    },
    render: function() {
      var extraContent = "";

      var options = _categories.map(function(el, i){
        return <option value={i}>{el}</option>;
      }.bind(this));

      if(this.state.expanded) {
        extraContent = (
          <div>
            <input type="text" value={this.state.price} placeholder="Add a price" name="listing[price]" onChange={this.handlePriceChange}/><br/>
            <input type="text" value={this.state.address} placeholder="Address" name="listing[address]" onChange={this.handleAdressChange}/><br/>
            <input type="text" value={this.state.description} placeholder="Describe your item (optional)" name="listing[description]" onChange={this.handleDescriptionChange}/><br/>

            <select
              value = {this.state.category_id}
              onChange={this.handleCategoryChange}>
              {options}
            </select><br/>

            <input type="submit" value="Submit"/>


          </div>
        )
      };

      return (
        <form onSubmit={this.handleSubmit}>
          <input onClick={this.toggle}
           type="text"
           placeholder="What are you selling?"
           value={this.state.title}
           name="listing[title]"
           onChange={this.handleTitleChange}/><br/>

          {extraContent}
        </form>
      )
    }
  });

module.exports = mostRecentItemsForm;
