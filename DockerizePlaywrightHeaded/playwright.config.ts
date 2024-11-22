// import { defineConfig } from '@playwright/test';

// export default defineConfig({
//   testDir: './tests',
//   timeout: 30 * 1000,
//   use: {
//     headless: true,
//     viewport: { width: 1280, height: 720 },
//     actionTimeout: 10 * 1000,
//     ignoreHTTPSErrors: true,
//   },
// });


import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: './tests',
  timeout: 30 * 1000,
  use: {
    headless: false, // Set headless mode to false
    viewport: { width: 1280, height: 720 },
    ignoreHTTPSErrors: true,
  },
});
