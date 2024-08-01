// path module

var path = require('path');

var filename = path.basename('D:\NodeJS\NodeJS\NodeJS\path.js');
console.log(filename);

var dir = path.dirname('D:\NodeJS\NodeJS\NodeJS\path.js');
console.log(dir);

var ext = path.extname('D:/NodeJS/NodeJS/NodeJS/path.js');
console.log(ext);

var abs = path.isAbsolute('D:/NodeJS/NodeJS/NodeJS/path.js');
console.log(abs);

var form = path.format({
    root: '/',
    base: 'file.txt',
    ext: 'ignored',
  });
console.log(form);

var join = path.join('D:','Nodejs','path.js');
console.log(join);

var nor = path.normalize('D/Nodejs/../Path');
console.log(nor);

var rela = path.relative('d/Nodejs/test', 'data/orandea/impl/bbb');
console.log(rela);

var resl = path.resolve('/foo/bar', '/tmp/file/');
console.log(resl);