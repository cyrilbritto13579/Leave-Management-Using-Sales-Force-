trigger LeaveRequestTrigger on Leave_Request__c (before insert, before update) {

    for (Leave_Request__c request : Trigger.new) {

        request.Duration_Category__c =
            LeaveDurationService.calculateCategory(
                request.Number_of_Days__c != null
                    ? Integer.valueOf(request.Number_of_Days__c)
                    : null
            );
    }
}