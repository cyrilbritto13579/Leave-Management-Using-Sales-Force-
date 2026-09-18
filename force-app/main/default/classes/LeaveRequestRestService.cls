@RestResource(urlMapping='/LeaveRequests/*')
global with sharing class LeaveRequestRestService {
    
    @HttpPost
    global static String createLeaveRequest(String applicantName, String leaveType, Integer numberOfDays) {
        try {
            Leave_Request__c req = new Leave_Request__c();
            req.Applicant_Name__c = applicantName;
            req.Leave_Type__c = leaveType;
            req.Number_of_Days__c = numberOfDays;
            req.Status__c = 'Pending';
            
            insert req;
            return 'Success: Leave Request created with ID ' + req.Id;
        } catch(Exception e) {
            return 'Error: ' + e.getMessage();
        }
    }
}