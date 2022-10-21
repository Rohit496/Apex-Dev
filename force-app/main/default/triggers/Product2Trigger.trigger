trigger Product2Trigger on Product2(before insert) {
  for (Product2 p : Trigger.new) {
    if (p.ProductCode != null && p.ProductCode != '') {
      p.ProductCode = 'RK-' + p.ProductCode;
    }
  }

}
