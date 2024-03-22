trigger ContactTrigger on Contact (after update){
    Set<String> emailIds = new Set<String>();
    for(Contact con :trigger.new){
        if(con.Email != null && (con.Email != trigger.oldMap.get(con.Id).Email)){
            emailIds.add(con.Email);
            emailIds.add(trigger.oldMap.get(con.Id).Email);
            System.debug('email Ids '+emailIds);
            Emailutility.sendemail(trigger.oldMap.get(con.Id).Email,con.Email);

        }
    }
   // Emailutility.sendemail(emailIds);

}