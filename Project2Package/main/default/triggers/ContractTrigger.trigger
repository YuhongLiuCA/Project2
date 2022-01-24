trigger ContractTrigger on Contract (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    switch on trigger.operationType{
        when BEFORE_INSERT{
            ContractTriggerHelper.contactDuplicate(trigger.new);

        }

        when BEFORE_UPDATE{
            ContractTriggerHelper.contactDuplicate(trigger.new);

            
        }

        when BEFORE_DELETE{
            
        }

        when AFTER_INSERT{
            
        }

        when AFTER_UPDATE{
            
        }

        when AFTER_DELETE{
            
        }

        when AFTER_UNDELETE{
            
        }
    }//end switch

}//end ContractTrigger