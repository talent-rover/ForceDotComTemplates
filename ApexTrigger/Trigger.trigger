/*
* @description	This is the {{ api_name }} trigger that fires on all events. All logic handled by {{ api_name }}TriggerHandler.cls
* @author		{{ author }}
* @deprecated	False
*/
trigger {{ api_name }} on {{ object_name }} (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

	{{ api_name }}TriggerHandler.getInstance().doFire();
}
