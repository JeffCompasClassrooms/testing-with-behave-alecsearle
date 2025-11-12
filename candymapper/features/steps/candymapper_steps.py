from behave import given, when, then
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

@given('I open the url "{url}"')
def step_open_url(context, url):
    context.behave_driver.get(url)
    WebDriverWait(context.behave_driver, 10).until(
        EC.presence_of_element_located((By.TAG_NAME, "body"))
    )

@then('I expect that element "{selector}" does exist')
def step_element_exists(context, selector):
    element = context.behave_driver.find_element(By.CSS_SELECTOR, selector)
    assert element is not None, f"Element '{selector}' not found"

@then('I expect that element "{selector}" contains the text "{text}"')
def step_element_contains_text(context, selector, text):
    element = context.behave_driver.find_element(By.CSS_SELECTOR, selector)
    assert text in element.text, f"Text '{text}' not found in element '{selector}'"