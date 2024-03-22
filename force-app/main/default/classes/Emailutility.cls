public class Emailutility {
    public static void sendemail(String oldEmailId,String newEmailId) {
       Messaging.SingleEmailMessage newMsg = new Messaging.SingleEmailMessage();
        newMsg.toAddresses = new String[]{oldEmailId,newEmailId};
        newMsg.subject = 'Email Changed Alert';
        newMsg.plainTextBody = 'Your Email has been changed and new Email is '+newEmailId;
        Messaging.SingleEmailMessage[] messages = new List<Messaging.SingleEmailMessage> {newMsg};
        Messaging.sendEmail(messages);  //Added by Mujassim
    }
}