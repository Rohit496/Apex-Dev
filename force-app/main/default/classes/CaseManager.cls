@RestResource(urlMapping='/Cases/*')
global with sharing class CaseManager {
  //   @HttpGet
  //   global static List<Case> getCases() {
  //     return [SELECT Id, CaseNumber, Subject, Status, Origin FROM Case];
  //   }

  @HttpGet
  global static Case getCase() {
    RestRequest req = RestContext.request;
    System.debug('req: ' + req);
    String caseId = req.requestURI.substring(
      req.requestURI.lastIndexOf('/') + 1
    );
    System.debug('caseId: ' + caseId);
    return [
      SELECT Id, CaseNumber, Subject, Status, Origin
      FROM Case
      WHERE Id = :caseId
    ];
  }

  @HttpPost
  global static Id createCase(String subj, String status, String origin) {
    Case c = new Case(Subject = subj, Status = status, Origin = origin);
    insert c;
    return c.Id;
  }

  @HttpDelete
  global static void deleteCase() {
    RestRequest req = RestContext.request;
    String caseId = req.requestURI.substring(
      req.requestURI.lastIndexOf('/') + 1
    );
    delete [SELECT Id FROM Case WHERE Id = :caseId];
  }
  @HttpPut
  global static Id upsertCase(
    String subj,
    String status,
    String origin,
    String id
  ) {
    RestRequest req = RestContext.request;
    String caseId = req.requestURI.substring(
      req.requestURI.lastIndexOf('/') + 1
    );
    Case c = new Case(
      Id = id,
      Subject = subj,
      Status = status,
      Origin = origin
    );
    upsert c;
    return c.Id;
  }

  // http patch for update case record
  @HttpPatch
  global static Id updateCase(
    String subj,
    String status,
    String origin,
    String id
  ) {
    RestRequest req = RestContext.request;
    String caseId = req.requestURI.substring(
      req.requestURI.lastIndexOf('/') + 1
    );
    Case c = new Case(
      Id = id,
      Subject = subj,
      Status = status,
      Origin = origin
    );
    update c;
    return c.Id;
  }
}
