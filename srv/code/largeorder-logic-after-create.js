/**
 * After Creation of an entry
 * @After(event = { "CREATE" }, entity = "AdminService.LargeOrder")
 * @param {(Object|Object[])} results - For the After phase only: the results of the event processing
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/

const cds = require ('@sap/cds')

module.exports = async function(results, request) {
	// https://cap.cloud.sap/docs/cds/cdl#events
	const LargeOrder = request.entity;
	const LOG = cds.log('C4C', {level: 'warn'});
    let messagetxt = `TCH - custom AFTER CREATE handler invoked`;
	console.log(messagetxt);
	LOG.info(messagetxt);
	//https://community.sap.com/t5/technology-blogs-by-sap/messaging-system-for-transferring-error-warning-and-information-messages/ba-p/13511991
    request.warn({
		code: "TCH_ACKNOWLEDGE",
		message: messagetxt,
		numericSeverity: 2
	});

	const { data } = results.data;

	await cds.emit({ event: LargeOrder.EntryCreated, data: { ID : data.ID, TicketID : data.TicketID } });
}