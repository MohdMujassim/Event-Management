/**
 * @description       : 
 * @author            : Mohd Mujassim
 * @group             : 
 * @last modified on  : 03-06-2024
 * @last modified by  : Mohd Mujassim
**/
public with sharing class FooterComponentLWCService {
    
    @AuraEnabled(cacheable=true)
    public static List<FooterContent__c> fetchFooterContent(){
        List<FooterContent__c> footerContent = new List<FooterContent__c>();
        try {
            footerContent = [SELECT Id, Content__c, Name FROM FooterContent__c LIMIT 3];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return footerContent;
    }
    
}
