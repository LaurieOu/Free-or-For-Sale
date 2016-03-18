var React = require('react');
var apiUtil = require('../../util/apiUtil');


// var History = require('react-router').History;

var _categories =
                ["--categories--",
                "Books",
                "Furniture",
                "Housing",
                "Clothes",
                "Electronics",
                "Free",
                "Services",
                "WorkOpportunities",
                "Music",
                "Other"];

var mostRecentItemsForm = React.createClass(
  {
    getInitialState: function(){
      return {expanded: false,
              title: "",
              description: "",
              price: "",
              address: "",
              category_id: this.props.category_id,
              images: []
      };
    },
    toggle: function(event){
      event.preventDefault();
      this.setState({expanded: true});
    },
    handleTitleChange: function(e) {
      e.preventDefault();
      this.setState({title: e.target.value});
    },
    handleDescriptionChange: function(e) {
      e.preventDefault();
      this.setState({description: e.target.value});
    },
    handlePriceChange: function(e) {
      e.preventDefault();
      this.setState({price: e.target.value});
    },
    handleAdressChange: function(e) {
      e.preventDefault();
      this.setState({address: e.target.value});
    },
    handleCategoryChange: function(e) {
      e.preventDefault();
      this.setState({category_id: parseInt(e.target.value)});
    },
    handleSubmit: function(e) {
      e.preventDefault();
      apiUtil.createListing(this.state);
      this.setState({expanded: false,
              title: "",
              description: "",
              price: "",
              address: "",
              category_id: this.props.category_id,
              images: []
      })
    },
    uploadImage: function (event) {
      event.preventDefault();
      cloudinary.openUploadWidget({cloud_name: 'ddefvho7g', upload_preset: 'hz6xer2t'}, function(error, result){
        if (!error) {
          var allImages = []


          result.forEach(function(one_image) {
            allImages.push({url: one_image.secure_url});
          }.bind(this))

          this.setState({images: allImages})
          // this.forceUpdate();
        }
      }.bind(this), false);
    },
    closeForm: function(event) {
      event.preventDefault();
      this.setState({expanded: false})
    },
    render: function() {
      var extraContent = "";

      var options = _categories.map(function(el, i){
        return <option key={i} value={i} >{el}</option>;
      }.bind(this));

      if(this.state.expanded) {
        extraContent = (
          <div>
            <input type="text" value={this.state.price} placeholder="Add a price" name="listing[price]" onChange={this.handlePriceChange} className="form-listing-item"/><br/>
            <input type="text" value={this.state.address} placeholder="Address" name="listing[address]" onChange={this.handleAdressChange} className="form-listing-item"/><br/>
            <textarea className="form-listing-item-description" type="text" placeholder="Describe your item (optional)" value={this.state.description} onChange={this.handleDescriptionChange} ></textarea>
            <br/>

            <select
              value = {this.state.category_id}
              onChange={this.handleCategoryChange}
              className="select-category-dropdown">
              {options}
            </select><br/>

            <button className="btn btn-default"onClick={this.uploadImage}>Add Image (Optional)</button>


            { this.state.images.map(function(image) {
              return (
                <div>
                  <br/>
                  <li key={image.id}><img src={image.url} /></li>
                  <br/>
                </div>)
            })}

            <br/>

            <input className="btn btn-default submit-button" type="submit" value="Submit"/>
            <button className="btn btn-default close-form-button" onClick={this.closeForm}>X</button>


          </div>
        )
      };

      return (
        <form onSubmit={this.handleSubmit} className="form-container">
          <input onClick={this.toggle}
           type="text"
           placeholder="What are you selling?"
           value={this.state.title}
           name="listing[title]"
           className="form-listing-item"
           onChange={this.handleTitleChange}/><br/>

          {extraContent}
        </form>
      )
    }
  });

module.exports = mostRecentItemsForm;
