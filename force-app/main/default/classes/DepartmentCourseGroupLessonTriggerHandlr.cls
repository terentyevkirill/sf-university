public with sharing class DepartmentCourseGroupLessonTriggerHandlr implements ITriggerHandler {

    public static Boolean triggerDisabled = false;

    public Boolean isDisabled() {
        return triggerDisabled;
    }

    public void beforeInsert(List<sObject> newList) {
        DepartmentCourseGroupLessonTriggerHelper.setDepartmentCourseGroup((List<DepartmentCourseGroupLesson__c>) newList);
    }

    public void afterInsert(List<sObject> newList, Map<Id, sObject> newMap) {
    }
    
    public void beforeUpdate(List<sObject> newList, Map<Id, sObject> newMap, List<sObject> oldList, Map<Id, sObject> oldMap) {
        DepartmentCourseGroupLessonTriggerHelper.setDepartmentCourseGroup((List<DepartmentCourseGroupLesson__c>) newList);
    }

    public void afterUpdate(List<sObject> newList, Map<Id, sObject> newMap, List<sObject> oldList, Map<Id, sObject> oldMap) {
    }

    public void beforeDelete(List<sObject> oldList, Map<Id, sObject> oldMap) {
    }

    public void afterDelete(List<sObject> oldList, Map<Id, sObject> oldMap) {
    }

    public void afterUndelete(List<sObject> newList, Map<Id, sObject> newMap) {
    }
}