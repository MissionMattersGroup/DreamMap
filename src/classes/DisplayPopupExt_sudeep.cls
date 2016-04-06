public with sharing class DisplayPopupExt_sudeep {

    //Variables
    public Boolean popupForgoals { get; set; }
    public Id dreamMapId         { get; set; }
    public String clientIdExt    { get; set; }
    
    public DisplayPopupExt_sudeep (DreamMapDetailsController controller) {}
    public DisplayPopupExt_sudeep (DynamicQueryForDreamMap_sudeep controller) {}
    public DisplayPopupExt_sudeep (DynamicQueryForContactGoalsController controller) {
        popupForgoals = false;
    }

    // Method to redirect the Add Goal and Objective Page so specific Dream Map
    public PageReference Cancel() {
        popupForgoals = false;
        if (clientIdExt != null && clientIdExt != '') {
            clientIdExt= clientIdExt.substring(0,15);
            PageReference reRend = Page.DynamicQueryForDreamMap;
            reRend.getParameters().put('clientid', clientIdExt);
            reRend.setRedirect(true);
            return reRend;
        }//End If
        return null;
    }//End of Method

    // Method to redirect the Add Goal and Objective Page so specific Dream Map
    public PageReference addGoalsAndObjectives()
    {
        if(String.isNotBlank(clientIdExt)){
            popupForgoals = true;
        }//End If
         return null;
    }//End of Method
}