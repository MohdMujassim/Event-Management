trigger AccountTrigger on Account (before insert,before update) {
    for(Account acc: Trigger.new){
   acc.ShippingStreet= acc.BillingStreet;
        acc.Shippingcity=acc.billingcity;
        acc.ShippingState=acc.billingState;
        acc.ShippingPostalCode=acc.BillingPostalCode;
        acc.ShippingCountry=acc.BillingCountry;
        
    }
    }