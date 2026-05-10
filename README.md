# 🗺️ DynamicMinimap-JR

> A lightweight FiveM resource that hides the minimap while on foot and automatically shows it when you get into any vehicle.

![FiveM](https://img.shields.io/badge/FiveM-Resource-red?style=for-the-badge&logo=data:image/png;base64,iVBORw0KGgo=)
![Lua](https://img.shields.io/badge/Lua-5.4-blue?style=for-the-badge&logo=lua)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Version](https://img.shields.io/badge/Version-1.0.0-orange?style=for-the-badge)

---

## 📋 Description

**DynamicMinimap-JR** is a simple and efficient client-side script for FiveM servers. It keeps the minimap hidden while your character is on foot, giving you a cleaner and more immersive HUD. The moment you enter any vehicle — car, motorcycle, boat, helicopter, or plane — the minimap appears automatically. When you exit, it hides again.

No dependencies. No bloat. Just plug and play.

---

## ✨ Features

- 🚗 **Auto-show** minimap when entering any vehicle
- 🚶 **Auto-hide** minimap when on foot
- ⚡ **Lightweight** — runs on a 250ms tick, minimal performance impact
- 🔌 **Plug & play** — no dependencies required
- 🛠️ **Works with all vehicle types** — cars, bikes, boats, aircraft, etc.

---

## 📂 File Structure

```
DynamicMinimap-JR/
├── client.lua
├── fxmanifest.lua
└── README.md
```

---

## 🚀 Installation

1. **Download** or clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/DynamicMinimap-JR.git
   ```

2. **Place** the `DynamicMinimap-JR` folder inside your server's `resources/` directory:
   ```
   resources/
   └── DynamicMinimap-JR/
       ├── client.lua
       ├── fxmanifest.lua
       └── README.md
   ```

3. **Add** the following line to your `server.cfg`:
   ```
   ensure DynamicMinimap-JR
   ```

4. **Restart** your server or use `refresh` + `start DynamicMinimap-JR` in the server console.

---

## ⚙️ How It Works

| Player State | Minimap |
|:---:|:---:|
| 🚶 On foot | ❌ Hidden |
| 🚗 In a vehicle | ✅ Visible |
| 🏍️ On a motorcycle | ✅ Visible |
| ✈️ In an aircraft | ✅ Visible |
| 🚤 In a boat | ✅ Visible |

The script uses a `CreateThread` loop that checks every **250ms** whether the player is inside a vehicle using the native `GetVehiclePedIsIn`. It only calls `DisplayRadar()` when the state **actually changes**, keeping overhead virtually zero.

---

## 🔧 Configuration

No configuration needed out of the box. If you want to adjust the check interval, open `client.lua` and modify the `Wait()` value:

```lua
Wait(250) -- milliseconds between checks (default: 250ms)
```

Lower = more responsive, slightly more CPU usage.  
Higher = less responsive, slightly less CPU usage.

---

## 📜 Requirements

| Requirement | Version |
|---|---|
| FiveM Server | Latest recommended |
| Game | GTA V |
| Framework | ❌ None (standalone) |

---

## 🤝 Contributing

Contributions are welcome! Feel free to open an **Issue** or submit a **Pull Request**.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

Distributed under the **MIT License**. See `LICENSE` for more information.

---

## 👤 Author

Made with ❤️ by **JR**

- GitHub: [@questi0ns-x](https://github.com/questi0ns-x)

---

<p align="center">
  <i>If this resource helped you, consider giving it a ⭐ on GitHub!</i>
</p>