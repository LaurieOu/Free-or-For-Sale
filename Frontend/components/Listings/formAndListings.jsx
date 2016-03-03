var NewListingForm = require('./newListing');
var Listings = require('./listings');
var React = require('react');

var FormAndListing = React.createClass({

  // getInitialState: function () {
  //
  //   window.addEventListener("scroll", this.handleScroll);
  //
  //   return {
  //     listings: [],
  //     page: 0,
  //     loadingFlag: false,
  //     url: "api/listings",
  //   }
  // },
  // loading: function(action) {
  //   if(action=="on"){
  //     var over = '<div id="overlay">' +
  //     '<img id="loading" src="http://bit.ly/pMtW1K" >' +
  //     '</div>';
  //     $('body').append(over);
  //     $('html, body').css("cursor", "wait");
  //   } else if(action=="off"){
  //     $("#overlay").remove();
  //     $('html, body').css("cursor", "auto");
  //   }
  // },
  // getListings: function() {
  //   var nextPage = this.state.page + 1;
  //   $.get(this.state.url, {page: this.state.page, category: this.props.params.category}, function(result) {
  //     if(this.isMounted()){
  //       this.setState({
  //         listings: this.state.listings.concat(result),
  //         loadingFlag: false,
  //         page: nextPage
  //       });
  //       this.loading("off");
  //     }
  //   }.bind(this));
  // },
  // componentDidMount: function() {
  //   this.loading("on");
  //   this.getListings();
  // },
  // handleScroll: function(e) {
  //   var windowHeight = $(window).height();
  //   var inHeight = window.innerHeight;
  //   var scrollT = $(window).scrollTop();
  //   var totalScrolled = scrollT + inHeight;
  //
  //   if(totalScrolled + 100 > windowHeight) {
  //     if(!this.state.loadingFlag) {
  //       this.setState({
  //         loadingFlag: true
  //       });
  //       this.loading("on");
  //       this.getListings();
  //     }
  //   }
  // },
  render: function () {
    return (
      <div className="form-listing-container">
        <NewListingForm />
        <Listings category={this.props.params.category} />
      </div>
    )
  }
});

module.exports = FormAndListing;
