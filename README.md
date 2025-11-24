# 🏀 Basketball Counter App  
Flutter application to count basketball points for **Team A** and **Team B**, built using **Provider State Management** for clean, scalable, and maintainable code.

---


## 🚀 Features
- Count points for **Team A** and **Team B**
- Add **1**, **2**, or **3** points easily
- Reset scores with one click
- Clean UI with responsive layout
- Built using **Provider** instead of setState (professional architecture)

---

## 🧠 State Management  
The app uses **Provider + ChangeNotifier** to handle the score state:

- `CounterProvider` manages:
  - Team A score
  - Team B score
  - Reset function  
- All UI widgets listen and rebuild automatically using `notifyListeners()`

---

## 📂 Folder Structure

