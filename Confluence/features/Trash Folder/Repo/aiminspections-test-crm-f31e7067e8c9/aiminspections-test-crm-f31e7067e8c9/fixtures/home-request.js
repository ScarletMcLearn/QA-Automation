'use strict';

let moment = require('moment');

module.exports = function () {

	return {
		lesseeFirstName: 'Joe',
		lesseeLastName: 'Smith',
		street1: '34405 12 Mile Rd',
		city: 'Farmington Hills',
		state: 'MI',
		zip: '48331',
		primaryPhone: '1231231234',
		businessPhone: '2342342345',
		email: 'joe.smith@aiminspections.com',
		spokenLanguage: 'English',
		writtenLanguage: 'English',
		maturityDate: moment.utc().add(1, 'month').format('MM/DD/YYYY'),
		vehicle: {
			vin: 'JNKCV51F14M701822',
			year: '2004',
			make: 'Infiniti',
			model: 'G35 Sedan',
			trim: '4dr Sdn AWS Auto w/Leather'
		},
		commentForInternalUse: 'Automated Test Comment'
	};

};

