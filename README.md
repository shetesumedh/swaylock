# 🔒 Swaylock Custom Lock Screen Configuration

This repository showcases my personalized **Swaylock** configuration for Wayland, designed to create a clean and minimal lock screen experience.

## ✨ Features

- Time and date display  
- Personalized name  
- Blurred background  
- Unlock indicator

## 🎥 Demo

[▶ Watch screen recording](2025-05-08_20-51-42.mp4)  
*See the lock screen in action with all its customizations.*

## 💡 Why I Did This

I built this setup to go beyond surface-level tweaks and explore the **deeper workings of Linux and the Wayland ecosystem**. It’s helped me better understand how graphical elements, user sessions, and input handling work on a modern Linux setup.

## 📦 How to Use

1. Clone this repository:
   ```bash
   cd
   mkdir git
   cd git
   git clone https://github.com/shetesumedh/swaylock.git
   pacman -Syu
   pacman -S swaylock
   cd swaylock
   chmod +x lockscreen.sh
   ./lockscreen.sh
   
