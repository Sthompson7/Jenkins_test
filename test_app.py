import unittest 
from app import app

class FlaskAppTestCase(unittest.TestCase):
  def setup(self):
    self.app = app.test_client()
    self.app.testing = True


  def test_home_page_status_code(self):
      response = self.app.get('/')
      self.assertEqual(response.status_code, 200)


  def test_home_page_content(self):
      response = self.app.get('/')
      self.assertIn(b"<title>", response.data)

if _name_ == '_main_':
  unittest.main() 
