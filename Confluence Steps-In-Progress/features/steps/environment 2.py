from selenium import webdriver

import os
import subprocess


def take_screenshot(context, path):
    print('Screenshot saved to: {path}'.format(path=path))
    context.browser.save_screenshot(path)


def log_browser_console(context, step):
    console_log_filename = '{step_name}.log'.format(step_name=step.name)
    with open(console_log_filename, 'w') as console_log_file:
        line = '{time} {level}: {message}\n'
        log_lines = []
        for log in context.browser.get_log('browser'):
            log_lines.append(line.format(time=log['timestamp'],
                                         level=log['level'],
                                         message=log['message']))
        console_log_file.writelines(log_lines)



def save_page_source(context, step):
    page_source_filename = '{step_name}.html'.format(step_name=step.name)
    with open(page_source_filename, 'w') as page_source:
        page_source.write(context.browser.page_source)
        

def before_feature(context, feature):
    context.driver = webdriver.Chrome('/home/scarlet/Projects/Automation/Confluence/features/steps/chromedriver')
    context.driver.set_window_size(1280, 1024)
    context.driver.implicitly_wait(100)
    context.browser.set_page_load_timeout(80)


def after_feature(context, feature):
    context.driver.quit()


def after_step(context, step):
    screenshot_filename = 'test_{step_name}.png'
    screenshot_path = os.path.join('/error_snaps/', screenshot_filename)

    if step.status == 'failed':
        take_screenshot(context,
                        screenshot_path.format(step_name=step.name))
        log_browser_console(context, step)
        save_page_source(context, step)