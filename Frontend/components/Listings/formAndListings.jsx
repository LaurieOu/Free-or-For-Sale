var NewListingForm = require('./newListing');
var Listings = require('./listings');
var React = require('react');

var FormAndListing = React.createClass({
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
