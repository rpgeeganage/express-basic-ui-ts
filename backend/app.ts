import 'module-alias/register';
import 'source-map-support/register';

import { join } from 'node:path';

import express, { Request, Response, NextFunction } from 'express';

const PORT = 80;
const publicFolder = join(__dirname, '..', 'frontend');

const app = express();
// eslint-disable-next-line import/no-named-as-default-member
app.use(express.static(publicFolder));

app.use('/api', (_req: Request, res: Response, next: NextFunction) => {
  res.json({
    response: {
      ['from api call']: new Date().getTime(),
    },
  });

  next();
});

app.listen(PORT, () => {
  console.log(`Server started at port: ${PORT}`);
});
