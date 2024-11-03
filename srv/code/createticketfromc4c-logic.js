/**
 * Create an entry from C4C
 * @On(event = { "createTicketFromC4C" })
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function (request) {
	// We will first check whether the C4C Ticket ID is already created
	const LargeOrder = request.entity;
	const LOG = cds.log('C4C', { level: 'warn' });
	let messagetxt = `TCH - Custom createTicketFromC4C handler invoked`;
	console.log(messagetxt);
	LOG.info(messagetxt);
	//https://community.sap.com/t5/technology-blogs-by-sap/messaging-system-for-transferring-error-warning-and-information-messages/ba-p/13511991
	request.warn({
		code: "TCH_ACKNOWLEDGE",
		message: messagetxt,
		numericSeverity: 2
	});

	const { iv_TicketID, iv_TicketObjectID } = request.data;

	if (1 == 1) {

	}
}