import configparser

from selenium import webdriver


def read_ini(env):
    config = configparser.ConfigParser()
    config.read(env + '.ini')
    return config['env_values']


def before_all(context):
    # Set the size of the browser window.
    size = context.config.userdata['default_size']
    if 'device_type' in context.config.userdata:
        window_size = context.config.userdata['device_type'] + '_size'
        if window_size in context.config.userdata:
            size = context.config.userdata[window_size]

    dimensions = size.split('x')
    width = dimensions[0]
    height = dimensions[1]

    # Get environment specific values.
    env = context.config.userdata['default_env']
    if 'env' in context.config.userdata:
        env = context.config.userdata['env']
    env_values = read_ini(env)
    context.config.userdata.update(env_values)

    context.browser = webdriver.Chrome()
    context.browser.set_window_size(width, height)
    context.browser.set_page_load_timeout(10)
    context.browser.implicitly_wait(10)


def after_all(context):
    context.browser.quit()
