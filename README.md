# 🤖 Android UI Automation with Robot Framework & Appium

This project demonstrates Android UI automation using **Robot Framework** and **Appium**, tested on the [Sauce Labs demo app](https://github.com/saucelabs/sample-app-mobile). It includes positive and negative login tests, as well as logout functionality.

---

## ⚙️ Tech Stack

- Robot Framework
- Appium
- Appium-Python-Client
- Android Emulator / Real Device

---

## 📁 Project Structure

automation-robot/
├── apps/ # APKs used for testing
├── resources/ # Shared variables and reusable keywords
├── tests/ # Organized test cases
├── results/ # Test reports
└── README.md


---

## 🚀 Quick Start

1. Install dependencies  
pip install -r requirements.txt


2. Start Appium server  
appium


3. Run all tests  
robot --outputdir results tests/


4. View report  
Open `results/report.html` in your browser

---

## ✅ Test Coverage

- 🔐 Login tests:
- Valid credentials
- Invalid credentials
- Blank username
- Blank password
- Empty form
- 🔓 Logout test

---

## 📌 Notes

- Edit `resources/variables.robot` to adjust device name or APK path.
- Tests use `accessibility_id`, `xpath`, and other locators based on the app structure.

---

## 👤 Author

Created by **Osi Rahmadita**  
For demo/testing purposes only. Contributions welcome!
