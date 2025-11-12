from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager

def before_all(context):
    # Set up Chrome options for headless mode
    options = Options()
    options.add_argument("--headless=new")  # Run in headless mode (no GUI)
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-gpu")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--window-size=1920,1080")
    
    # Install and setup ChromeDriver
    service = Service(ChromeDriverManager().install())
    
    # Create Chrome WebDriver instance
    context.behave_driver = webdriver.Chrome(service=service, options=options)
    context.behave_driver.implicitly_wait(10)

def after_all(context):
    if hasattr(context, "behave_driver"):
        context.behave_driver.quit()