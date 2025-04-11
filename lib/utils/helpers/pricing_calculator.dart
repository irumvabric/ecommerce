class PricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxeRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);

    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxeRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxeRateForLocation(String location) {
    //Find out how to implement the tax API
    //Return an appropriate tax Rate

    return 0.1;
  }

  static double getShippingCost(String location) {
    //Find out how to implement the tax API
    //Return an appropriate tax Rate

    return 5.00;
  }

  // static double calculateCartPrice(String location) {
  //   //Find out how to implement the tax API
  //   //Return an appropriate tax Rate

  //   return 5.00;
  // }
}
