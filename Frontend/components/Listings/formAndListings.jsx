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
    var universityLogo = "";

    if (window.user.university === "UCLA") {
      universityLogo = (
      <div className="university-logo-image">
        <img src="https://brand.ucla.edu/wp-content/uploads/2013/08/ucla-wordmark-main-1.jpg" className="university-banner"/>
        <img src="http://www.amoeba.com/admin/uploads/blog/Eric_B/RoyceHallatSunset.jpg"  className="university-banner" />
      </div> );
    } else if (window.user.university === "Berkeley") {
      universityLogo = (
      <div className="university-logo-image">
        <img src="http://www.berkeley.edu/brand/img/logos/secondary_usage.png" className="university-banner"/>
        <img src="https://lh4.googleusercontent.com/ke0vvlQuX6yKswGnCOLMJgirJokVNG6YCvOO0JqHSjHA8Q5SrQPp-LUvqwJJ9KR-KP9R=w702-h420-no" className="university-banner" />
      </div>);
    } else if (window.user.university === "UCSB") {
      universityLogo = (
      <div className="university-logo-image">
        <img src="http://www.physics.ucsb.edu/sites/secure.lsit.ucsb.edu.phys.d7/themes/at_lsit/images/department/ucsbwave-blue.png" className="university-banner"/>
        <img src="https://phsgradsatcollege.files.wordpress.com/2013/02/ucsb-santa-barbara-campus-2-700x260.jpg" className="university-banner" />
      </div>);
    } else if (window.user.university === "NYU") {
      universityLogo = (
      <div className="university-logo-image">
        <img src="https://goodwillnynj.files.wordpress.com/2014/05/nyu_logo_new_york_university1.jpg" className="university-banner"/>
        <img src="http://cas.nyu.edu/props/IO/37085/126/CAS_homepage_welcome.jpg" className="university-banner" />
      </div>);
    } else if (window.user.university === "Duke") {
      universityLogo = (
      <div className="university-logo-image">
        <img src="http://www.trianglebwc.org/Data/sites/1/media/member-logos/duke-university.png" className="university-banner"/>
        <img src="http://architect.duke.edu/images/quads/quad-rail.gif" className="university-banner" />
      </div>);
    }



    return (
      <div className="form-listing-container">
        {universityLogo}
        <NewListingForm />
        <Listings category={this.props.params.category} />
      </div>
    )
  }
});

module.exports = FormAndListing;
