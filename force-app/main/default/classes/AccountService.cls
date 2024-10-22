/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 10-22-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public with sharing class AccountService {
    public static void updateAccountStatus(List<Account> lAccounts) {
        for (Account acc : lAccounts) {
            if(acc.NumberOfEmployees > 10){
                acc.Active__c = true;
            }else{
                acc.Active__c = false;
            }
        }
    }
}