

// https://www.npmjs.com/package/strip-html
var strip = require('strip-html');
process.stdin.pipe(strip()).pipe(process.stdout);
process.stdout.on('error', function () {});





