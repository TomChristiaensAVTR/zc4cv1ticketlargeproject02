const { service } = require("@sap/cds");

const cds = require("@sap/cds");
const { initialize } = require("passport");
//
class ServiceClass extends cds.ApplicationService{
    init(){

        const { LargeOrder } = this.entities;

        this.on('createTicketFromC4C', LargeOrder, this.CreateInitialTicket);
        return super.init();
    }

    CreateInitialTicket(req){
        
        const { LargeOrder } = this.entities;

        let { TicketObjectID } = req.data;

    }
}