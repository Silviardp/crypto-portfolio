import React, { Component } from "react";

class Portfolio extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <div className="portfolio-value">
          <div className="portfolio-value--header">
            Your total portfolio value is:
          </div>
          <div className="portfolio-value--content">TOTAL</div>
        </div>
        <div className="portfolio-items"></div>
      </div>
    );
  }
}

export default Portfolio;
