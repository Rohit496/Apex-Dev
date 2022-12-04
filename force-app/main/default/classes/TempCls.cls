public with sharing class TempCls {
  // convert fehrenite to celcius
  public static Decimal fahrenheitToCelsius(Double fahrenheit) {
    Decimal d = (fahrenheit - 32) * 5 / 9;
    return d.setScale(2);
  }
}
