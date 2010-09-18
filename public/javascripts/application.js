Modernizr.addTest('fontsmoothing', function() {
	var div = document.createElement('div');
	if ('fontSmoothing' in div.style) return true;
	
	var vendors = ['Webkit', 'Moz', 'ms', 'Khtml'];
	for(var i in vendors) if (vendors[i] + 'FontSmoothing' in div.style) return true;
});