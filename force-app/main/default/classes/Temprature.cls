public with sharing class Temprature {
  public static Decimal fehreniteToCelcius(Decimal fehrenite) {
    Decimal celcius = (fehrenite - 32) * 5 / 9;
    return celcius.setScale(2);
  }
}