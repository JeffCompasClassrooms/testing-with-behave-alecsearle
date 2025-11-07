from behave_webdriver import Chrome
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager

def before_all(context):
    # Set up Chrome options
    options = Options()
    options.add_argument("--start-maximized")
    options.add_argument("--headless=new")
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-gpu")
    options.add_argument("--disable-dev-shm-usage")

    # Install and get ChromeDriver path using webdriver_manager
    driver_path = ChromeDriverManager().install()

    # Initialize behave_webdriver Chrome instance (pass executable_path, not service)
    context.behave_driver = Chrome(executable_path=driver_path, options=options)

def after_all(context):
    if hasattr(context, "behave_driver"):
        context.behave_driver.quit()
