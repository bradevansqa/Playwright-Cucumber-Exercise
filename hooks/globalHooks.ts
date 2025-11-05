import { After } from '@cucumber/cucumber';
import { getPage } from '../playwrightUtilities';
import fs from 'fs';

if (!fs.existsSync('traces')) {
  fs.mkdirSync('traces');
}

After(async function (scenario) {
  try {
    const page = getPage();
    const context = page.context();
    const safeName = scenario.pickle.name.replace(/[^a-z0-9]/gi, '_').toLowerCase();

    await context.tracing.stop({
      path: `./traces/${safeName}.zip`,
    });
  } catch {
    // If page is not initialized, just skip trace saving
  }
});
