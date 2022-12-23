public with sharing class VideoHandler {
  @auraEnabled(cacheable=true)
  public static List<ID> getVideoUrl() {
    List<ID> result1 = new List<ID>();
    Map<String, Video_Component__mdt> mapCMDId = Video_Component__mdt.getAll();
    for (String result : mapCMDId.keySet()) {
      result1.add(mapCMDId.get(result).Id);
    }
    return result1;
  }
}