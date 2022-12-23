({
  init: function (component, event, helper) {
    try {
      // Prepare a new record from template
      component.find("accountRecordCreator").getNewRecord(
        "Account", // sObject type
        null, // recordTypeId
        false, // skip cache
        $A.getCallback(function () {
          const rec = component.get("v.newAccount");
          const error = component.get("v.newContactError");
          if (error || rec === null) {
            console.log("Error: " + error);
            return;
          }
        })
      );
    } catch (e) {
      console.log({ e });
    }
  },

  saveAccount: function (component, event, helper) {
    component.find("accountRecordCreator").saveRecord(function (saveResult) {
      if (saveResult.state === "SUCCESS") {
        // record is saved successfully
        var resultsToast = $A.get("e.force:showToast");
        resultsToast.setParams({
          message: "Account record created!"
        });
        resultsToast.fire();
      } else if (saveResult.state === "ERROR") {
        // handle the error state
        console.log("Error: " + JSON.stringify(saveResult.error));
      }
    });
  }
});