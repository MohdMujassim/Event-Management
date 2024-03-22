/**
 * @description       : 
 * @author            : Mohd Mujassim
 * @group             : 
 * @last modified on  : 03-10-2024
 * @last modified by  : Mohd Mujassim
**/
public without sharing class UserUtility {
    
    @AuraEnabled(cacheable=true)
    public static String fetchUserName() {
        return UserInfo.getName(); // Max Fit Site Guest User
    }

    @AuraEnabled(cacheable=true)
    public static String getExperienceURL(){
        String baseUrl = Network.getLoginUrl(Network.getNetworkId());
        return baseURL;
    }
}
