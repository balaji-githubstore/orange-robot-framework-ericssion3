from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager

def get_driver_path(browser_name):
    if  browser_name.lower() == 'firefox'  or   browser_name.lower() == 'ff':
        driver_path=GeckoDriverManager().install()
    elif browser_name.lower() == 'edge':
       driver_path=EdgeChromiumDriverManager().install()
    else:
        driver_path=ChromeDriverManager().install()
    return  driver_path





