'use strict';

/* eslint no-process-env: 0 */

let env = {
	local: {
		baseUrl: 'http://localhost:8000',
		requestProcessorUrl: 'http://localhost:4000',
		defaultUser: { username: 'sample@aiminspections.com', password: 'crmisnice' }
	},
	development: {
		baseUrl: 'http://crm-dev.aiminspect.com',
		requestProcessorUrl: 'http://crm-api-dev.aiminspect.com',
		defaultUser: { username: 'sample@aiminspections.com', password: 'crmisnice' }
	},
	qa: {
		baseUrl: 'http://crm-qa.aiminspect.com',
		requestProcessorUrl: 'http://crm-api-qa.aiminspect.com',
		defaultUser: { username: 'sample@aiminspections.com', password: 'crmisnice' }
	},
	uat: {
		baseUrl: 'http://crm-uat.aiminspect.com',
		requestProcessorUrl: 'http://crm-api-uat.aiminspect.com',
		defaultUser: { username: 'sample@aiminspections.com', password: 'crmisnice' }
	}
};

module.exports = env[process.env.NODE_ENV || 'development'];

