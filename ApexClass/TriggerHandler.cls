/*
* @description	Handler class for {{ trigger_name }}.trigger, all trigger logic will be contained in this class.
* @author		{{ author }}
* @deprecated	False
*/
public with sharing class {{ trigger_name }}TriggerHandler {

	// Instance of this class for a singleton implementation
	private static {{ trigger_name }}TriggerHandler instance;

	// Booleans to control trigger recursion
	public Boolean isBeforeExecuting = false;
	public Boolean isAfterExecuting = false;

	/*
	* @description	This is the method that enforces a singleton implementation, as this is my preferred method of controlling
	*				trigger recursion. It takes no parameters, and returns an instance of {{ trigger_name }}TriggerHandler.
	*				The {{ trigger_name }}TriggerHandler instance that is returned will be a new instance if this is the first time
	*				getInstance() is called in the transaction, otherwise the existing instance will be returned.
	* @author		{{ author }}
	* @return		{{ trigger_name }}TriggerHandler
	* @param
	* @throws
	* @deprecated	False
	*/
	public static {{ trigger_name }}TriggerHandler getInstance () {

		instance = (instance == null) ? instance = new {{ trigger_name }}TriggerHandler() : instance;

		return instance;
	}

	/*
	* @description	Class constructor, private. Generally, getInstance() should always be used in order to
	*				enforce the singleton pattern.
	* @author		{{ author }}
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	private {{ trigger_name }}TriggerHandler () {}

	/*
	* @description	This is the method which actually 'fires' the trigger logic. This method contains the trigger action
	*				structure and makes the calls to the various helper methods which perform the trigger logic.
	* @author		{{ author }}
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void doFire () {

		// Before actions
		if (Trigger.isBefore && !isBeforeExecuting) {

			// Prevent Before action recursion
			isBeforeExecuting = true;

			// Before Insert
			if (Trigger.isInsert) {

			// Before Update
			} else if (Trigger.isUpdate) {

			// Before Delete
			} else if (Trigger.isDelete) {

			}

		// After actions
		} else if (Trigger.isAfter && !isAfterExecuting) {

			// Prent After action recursion
			isAfterExecuting = true;

			// After Insert actions
			if (Trigger.isInsert) {

			// After Update actions
			} else if (Trigger.isUpdate) {

			// After Delete actions
			} else if (Trigger.isDelete) {

			// After Undelete actions
			} else if (Trigger.isUndelete) {

			}
		}

		// Reset recursion flags
		isBeforeExecuting = false;
		isAfterExecuting = false;
	}
}
