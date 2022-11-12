/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 11-10-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public with sharing class GEN_ChartController {
  public GEN_ChartController() {
  }

  @AuraEnabled(cacheable=true)
  public static List<AggregateResult> getOpportunities() {
    return [
      SELECT
        SUM(ExpectedRevenue) expectRevenue,
        SUM(Amount) amount,
        StageName stage
      FROM Opportunity
      WHERE StageName NOT IN ('Closed Won')
      GROUP BY StageName
      LIMIT 20
    ];
  }
}
