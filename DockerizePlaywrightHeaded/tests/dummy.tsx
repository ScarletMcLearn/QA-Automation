import { test, expect } from '@playwright/test';

// Define test data (replace with actual values)
const BASE_URL = process.env.BASE_URL || 'https://example.com';
const USERNAME = process.env.USERNAME || 'testuser';
const PASSWORD = process.env.PASSWORD || 'password123';

test.describe('Login Functionality', () => {
  test('should login with valid credentials', async ({ page }) => {
    // Navigate to the login page
    await page.goto(`${BASE_URL}/login`);

    // Locate and fill in the username and password fields
    await page.fill('input[name="username"]', USERNAME);
    await page.fill('input[name="password"]', PASSWORD);

    // Click the login button
    await page.click('button[type="submit"]');

    // Wait for navigation or validation element
    await page.waitForURL(`${BASE_URL}/dashboard`);

    // Validate successful login
    const welcomeText = await page.textContent('h1');
    expect(welcomeText).toContain('Welcome');
  });

  test('should show an error for invalid credentials', async ({ page }) => {
    await page.goto(`${BASE_URL}/login`);

    await page.fill('input[name="username"]', 'wronguser');
    await page.fill('input[name="password"]', 'wrongpassword');
    await page.click('button[type="submit"]');

    const errorMessage = await page.textContent('.error-message');
    expect(errorMessage).toBe('Invalid username or password.');
  });
});
