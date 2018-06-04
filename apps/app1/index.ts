import * as lib1 from '@repo/lib1';
import * as lib2 from '@repo/lib2';

import * as express from 'express';

var app = express();

app.get('*', (req, res) => {
  res.send('Hello!')
})

const port = 3000;

app.listen(port, function() {
  console.log(`listening on ${port}`);
});