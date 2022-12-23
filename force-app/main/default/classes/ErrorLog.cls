public class ErrorLog {

    public static Error_Log__c logError(String ClassName, String FunctionName, String ErrorMessage, String StackTrace, Integer LineNumber, String recordId) {

        Error_Log__c logger = new Error_Log__c();
        logger.Class_Name__c = className;
        logger.Function_Name__c = FunctionName;
        logger.Error_Message__c = ErrorMessage;
        logger.Stack_Trace__c = StackTrace;
        logger.Line_Number__c = LineNumber;
        logger.Record_Id__c = recordId;
        return logger;
    }
}