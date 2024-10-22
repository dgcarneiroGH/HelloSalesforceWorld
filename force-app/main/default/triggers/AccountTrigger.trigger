/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 10-22-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
trigger AccountTrigger on Account (before insert, before update) {
    new AccountTriggerHandler().run();
}