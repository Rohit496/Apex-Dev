import { LightningElement, track, wire } from "lwc";
import { getRecords } from "lightning/uiRecordApi";
import getCMDID from "@salesforce/apex/VideoHandler.getVideoUrl";

const FIELDS = [
  "Video_Component__mdt.Video_URL__c",
  "Video_Component__mdt.Video_Title__c",
  "Video_Component__mdt.Video_Description__c"
];

export default class VideoComp extends LightningElement {
  @track cmdRecordId = [];
  @track videoUrl;
  @track videoTitle;
  @track videoDescription;

  @track allData;

  @wire(getCMDID) getCMDIDData({ error, data }) {
    if (data) {
      // push the data to the array using loop with index
      for (let i = 0; i < data.length; i++) {
        this.cmdRecordId.push(data[i]);
      }
    } else if (error) {
      console.log("🚀 ~ @wire ~ error", error);
    }
  }

  @wire(getRecords, {
    records: [
      {
        recordIds: [
          "m025g000000Bq2RAAS",
          "m025g000000Bq2HAAS",
          "m025g000000Bq2MAAS"
        ],
        fields: FIELDS
      }
    ]
  })
  propertyOrFunctionName({ error, data }) {
    if (data) {
      console.log("🚀 ~ @wire ~   data", data);
      console.log("🚀 ~ @wire ~   data.records", data.results);
      this.allData = data.results;
    } else if (error) {
      console.log("🚀 ~ @wire ~ error", error);
    }
  }
}