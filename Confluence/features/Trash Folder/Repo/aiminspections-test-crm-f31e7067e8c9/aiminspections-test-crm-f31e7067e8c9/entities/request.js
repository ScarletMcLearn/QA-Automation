'use strict';

let _requestId;

exports.getRequestId = function () {
	return _requestId;
};

exports.setRequestId = function (id) {
	_requestId = id;
};

