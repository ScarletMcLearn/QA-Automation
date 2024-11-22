import { test, expect } from '@playwright/test';

test('Google has the correct title', async ({ page }) => {
  // Go to Google's homepage
  await page.goto('https://www.google.com');

  // Verify the title of the page
  const title = await page.title();
  expect(title).toBe('Google');
});
