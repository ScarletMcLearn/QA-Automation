'use strict';

let requestEntity = require('./request');

// Maps an entity's value, e.g. 'requestId' to the pre-existing, created entity
module.exports = {
	requestId: {
		getEntityData: requestEntity.getRequestId,
		columnIndex: 0
	}
};

