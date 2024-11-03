const { entity } = require("@sap/cds");

/**
 * Before largeorder GET
 * @Before(event = { "READ" }, entity = "AdminService.LargeOrder")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
	const LargeOrder = request.entity;
	const LOG = cds.log('C4C', {level: 'warn'});
    let messagetxt = `TCH - Custom Before READ handler invoked`;
	console.log(messagetxt);
    LOG.info(messagetxt);
	//https://community.sap.com/t5/technology-blogs-by-sap/messaging-system-for-transferring-error-warning-and-information-messages/ba-p/13511991
    request.warn({
		code: "TCH_ACKNOWLEDGE",
		message: messagetxt,
		numericSeverity: 2
	});

	let RequestedID = request.data.ID;
	messagetxt = `TCH - On BEFORE Read Executed with ID ${RequestedID}`;
	console.log(messagetxt);
	LOG.info(messagetxt);

	// Switching the ID - IF the calling system passed on the TICKETID in the ID attribute, we make sure that this is OK.
	// We fetch the corresponding ID value from the DB and overrule the ID attribute in the request 
	if (RequestedID == undefined) {
		if (1 == 1) {
		}
	}
	else {
		if (RequestedID.length < 25 && RequestedID.length > 1) {
			messagetxt = `TCH - ${RequestedID} is shorter then 15 and longer then 1`;
			console.log(messagetxt);
			LOG.info(messagetxt);
			messagetxt = `TCH - Most probably ${RequestedID} is the C4C Ticket ID`;
			console.log(messagetxt);
			LOG.info(messagetxt);
			
			//let record1 = await SELECT.one.from(LargeOrder).where({ TicketID : RequestedID });
			//let record2 = await SELECT.one.from `zc4cv1ticketlargeproject02.LargeOrder` .where `TicketID = ${ RequestedID }`;
			let record3 = await SELECT.one.from(LargeOrder).where`TicketID = ${RequestedID}`;
			if (record3.ID.length > 1) {
				//Adapt the READ request to the correct value
				messagetxt = `TCH - overuling ID ${RequestedID} with ${record3.ID}`;
				console.log(messagetxt);
				LOG.info(messagetxt);
				request.warn({
					code: "TCH_ACKNOWLEDGE",
					message: messagetxt,
					numericSeverity: 2
				});
				request.data.ID = record3.ID;
				request.params[0].ID = record3.ID;
				request.query.SELECT.from.ref[0].where[2].val = record3.ID;
			}
		}
		else {
			let record4 = await SELECT.one.from(LargeOrder).where({ ID: RequestedID });
			if (1 == 1) {
			}
		}
	}
}