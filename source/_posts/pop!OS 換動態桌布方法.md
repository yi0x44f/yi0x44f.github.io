---
title: pop!OS 換動態桌布方法 123
date: 2026-02-19 03:09:15
tags: pop!OS
---
# 安裝所需工具

## linux-wallpaperengine

https://github.com/Almamu/linux-wallpaperengine

## steam wallpaper engine

https://store.steampowered.com/app/431960/Wallpaper_Engine/

```markdown
linux-wallpaperengine <id>
```

確定是可以執行的。（目前有些比較炫泡的桌布可能還不支援

# 寫 .desktop 讓他在開機時啟用

- **建立啟動檔：**`nano ~/.config/autostart/wallpaper-engine.desktop`
- **貼入以下內容：**

```
[Desktop Entry]
Type=Application
Name=Linux Wallpaper Engine
Exec={your_path}/linux-wallpaperengine --screen-root eDP-1 1546941187
X-GNOME-Autostart-Delay=3
X-GNOME-Autostart-enabled=true
```