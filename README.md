# 🤖 Robot Framework UI Automation – Saucedemo

Automated UI testing project using **Robot Framework** + **SeleniumLibrary**
Focuses on login functionality, cart interactions, and error handling for [saucedemo.com](https://www.saucedemo.com).

---

## 📌 Project Structure

```
robot-login-test/
├── tests/                 # Test cases (login, logout, add to cart)
│   └── login_test.robot
├── resources/             # Keywords and variables
│   └── keywords.robot
├── results/               # Output: logs, screenshots, reports
├── README.md              # This file
└── requirements.txt       # Dependencies
```

---

## ⚙️ Tech Stack

* [Robot Framework](https://robotframework.org/)
* SeleniumLibrary
* Python 3.9+
* Chrome + Chromedriver

---

## 📅 Installation

1. Clone this repo:

   ```bash
   git clone https://github.com/Kongarad/Robot-Framework
   cd robot-login-test
   ```

2. Create and activate virtual environment:

   ```bash
   python -m venv venv
   source venv/bin/activate  # macOS/Linux
   venv\Scripts\activate     # Windows
   ```

3. Install dependencies:

   ```bash
   pip install -r requirements.txt
   ```

4. Make sure ChromeDriver is in your PATH.

---

## 🚀 Run Tests

```bash
robot -d results tests/login_test.robot
```

* Output will be saved in the `results/` folder:

  * `log.html` – detailed test log
  * `report.html` – summary report
  * `output.xml` – test data in XML

---

## ✅ Test Coverage

* [x] Valid login
* [x] Invalid password
* [x] Empty username
* [x] Logout flow
* [x] Add item to cart

---

## 🌟 Screenshots & Reports

> Screenshots and HTML reports are automatically generated after each test run. Check the `results/` folder.

---

## 🌐 Author

Kongarets | [GitHub](https://github.com/kongared)

---

## 🚨 License

This project is licensed under the MIT License.
