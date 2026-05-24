<!-- Wave Header -->
<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=EEEEEE&height=230&section=header&text=Arctryx-ToolKit&fontSize=75&fontAlignY=30&animation=twinkling&fontColor=000&desc=Simple%20ToolKit%20Spam%20-%20Tracking&descAlignY=55&descSize=20&descColor=555" width="100%" />
</p>

<div align="center">

<img src="./.lib/media/banner.gif" width="100%" />

<br/>

<!-- Badges -->
<img src="https://img.shields.io/github/package-json/v/dcodemaxz/arctryx?label=Version&logo=github&logoColor=white&color=blue"/>
<img src="https://img.shields.io/badge/Platform-Node.js-339933?logo=node.js&logoColor=white"/>
<img src="https://img.shields.io/badge/License-MIT-red?logo=opensourceinitiative&logoColor=white"/>
<img src="https://komarev.com/ghpvc/?username=dcodemaxz&repo=arctryx&label=Views&color=lightgrey&style=flat"/>

<br/>

<img src="https://img.shields.io/github/stars/dcodemaxz/arctryx?logo=github">
<img src="https://img.shields.io/github/forks/dcodemaxz/arctryx?logo=github">

</div>

 ---

## 🧭 About Arctryx

> [!IMPORTANT]
> **`Arctryx`** is a ToolKit that combines various features such as spam and tracking **based on CLI Menu** with an easy and simple interactive display.

---

## ⚙️ Installation

<details open>

### 1. Update debian environment ( Linux / VPS / Termux)

```bash
apt update -y && apt upgrade -y && apt install git make -y
```

### 2. Clone the repository

```bash
git clone https://github.com/dcodemaxz/arctryx
```

### 3. Enter the project directory

```bash
cd arctryx
```
 
### 4. Install the dependencies (first time)

```bash
make install
```

### 5. Run script

```bash
make run
```

</details>

> [!IMPORTANT]
> `Select register` and copy the generated key and send it to [developer](https://t.me/dcodemaxz) for activation, or you can also select **Free Trial** to get an access token

---

## 🏗️ Architecture Overview

```mermaid
graph TD
    A["CLI User<br/>Terminal Input"] --> B["start<br/>CORE Controller"]

    %% CORE RESPONSIBILITY
    B --> C["Menu UI<br/>Select Case 01–10"]
    C --> D{"Case Router<br/>Switch Menu"}

    %% ACCESS CONTROL
    D --> E["Premium Check<br/>security/auth.json"]

    E -->|Allowed| F["Feature Executor<br/>Run Selected Case"]
    E -->|Blocked| G["Access Denied<br/>Premium Only"]

    %% EXTERNAL API BASE
    F --> API["API Base<br/>External Server Logic"]

    %% CASE 01–04
    F --> S1["01 Spam WA<br/>OTP Flood"]
    S1 --> API

    F --> S2["02 Spam NGL<br/>Question Flood"]
    S2 --> API
    S2 --> D2[".lib/database/ngl"]

    F --> S3["03 Spam Gmail<br/>Email Flood"]
    S3 --> API
    S3 --> D3[".lib/database/gmail"]

    F --> S4["04 Spam Pairing<br/>WA Pairing"]
    S4 --> X1[".session"]

    %% CASE 05–08
    F --> T1["05 Doxing Police<br/>Identity Lookup"]
    T1 --> API

    F --> T2["06 Sosmed Stalking<br/>OSINT Search"]
    T2 --> API

    F --> T3["07 NIK Tracking<br/>Identity Validate"]
    T3 --> API

    F --> T4["08 IP Tracking<br/>Geo Lookup"]
    T4 --> API

    %% CASE 09
    F --> U1["09 Banned WA<br/>Check & Log"]
    U1 --> B1[".lib/system/bot"]
    U1 --> X1

    %% CASE 10
    F --> U2["10 Downloader<br/>TT · IG · FB · X"]
    U2 --> API
    U2 --> DL[".Download"]

    %% MEDIA (USED BY CORE)
    B --> M[".lib/media<br/>Backsound"]

    %% OUTPUT
    F --> O["CLI Renderer<br/>Formatted Output"]

    %% STYLES (DARK TOOLKIT THEME)
    style A fill:#1e1e1e,stroke:#9e9e9e,color:#e0e0e0
    style B fill:#202020,stroke:#cfd8dc,color:#ffffff
    style C fill:#252525,stroke:#b0bec5,color:#e0e0e0
    style D fill:#2c2c2c,stroke:#90a4ae,color:#ffffff
    style E fill:#2a2a2a,stroke:#ffa000,color:#fff8e1
    style F fill:#303030,stroke:#4fc3f7,color:#e1f5fe
    style G fill:#3a1f1f,stroke:#e53935,color:#ffebee

    style API fill:#263238,stroke:#29b6f6,color:#e1f5fe

    style S1 fill:#263238,stroke:#4dd0e1,color:#e0f7fa
    style S2 fill:#263238,stroke:#4dd0e1,color:#e0f7fa
    style S3 fill:#263238,stroke:#4dd0e1,color:#e0f7fa
    style S4 fill:#263238,stroke:#4dd0e1,color:#e0f7fa

    style T1 fill:#263238,stroke:#81c784,color:#e8f5e9
    style T2 fill:#263238,stroke:#81c784,color:#e8f5e9
    style T3 fill:#263238,stroke:#81c784,color:#e8f5e9
    style T4 fill:#263238,stroke:#81c784,color:#e8f5e9

    style U1 fill:#263238,stroke:#ce93d8,color:#f3e5f5
    style U2 fill:#263238,stroke:#ba68c8,color:#f3e5f5

    style D2 fill:#2f2f2f,stroke:#a1887f,color:#efebe9
    style D3 fill:#2f2f2f,stroke:#a1887f,color:#efebe9
    style X1 fill:#2f2f2f,stroke:#ffb300,color:#fff8e1
    style DL fill:#2a2a2a,stroke:#80cbc4,color:#e0f2f1

    style O fill:#212121,stroke:#90caf9,color:#e3f2fd
```

## 💡 Features

<img src="./.lib/media/arctryx.png" alt="Feature Image" width="100%"/>

> [!TIP]
> This script uses a CLI Menu based interactive display that uses `(↑↓) & (enter)` **navigation** to make it easier to use.

### # List Menu

<details open>

- **[01] Spam Wa** :<br>
  Send repeated OTP requests to a target WhatsApp number.

- **[02] Spam Ngl** :<br>
  Send massive anonymous questions to a target NGL account.

- **[03] Spam Gmail** :<br>
  Send large volumes of emails to a target Gmail inbox.

- **[04] Spam Pairing** :<br>
  Send WhatsApp pairing codes repeatedly to a target phone number.

- **[05] Doxing Police** :<br>
  Search and retrieve personal data from police-related databases.

- **[06] Sosmed Stalking** :<br>
  Collect public data from social media platforms such as TikTok, Instagram, X (Twitter), YouTube, and GitHub.

- **[07] Nik Tracking** :<br>
  Track and retrieve information linked to Indonesian NIK (KTP/KK).

- **[08] IP Tracking** :<br>
  Identify approximate location and network details from an IP address.

- **[09] Banned Wa** :<br>
  Attempt to trigger WhatsApp account bans using pairing-based methods.

- **[10] Downloader** :<br>
  Download videos/audio from almost all social media platforms.

- **[11] Create TempMail** :<br>
  Generate a disposable email address instantly.

- **[12] Inbox TempMail** :<br>
  Fetch and read messages from a temporary email inbox.

- **[13] Text to Barcode** :<br>
  Convert any text into a QR code barcode image.

- **[14] WHOIS Lookup** :<br>
  Retrieve domain registration and ownership information.

- **[15] User-Agent Info** :<br>
  Parse and display detailed technical information from a User-Agent string.

- **[16] Tracking Resi** :<br>
  Check shipment status and delivery history of various couriers.

- **[17] Phising Location** :<br>
  Generate a phishing link that mimics a location‑sharing page.

  <img src="./.lib/media/phishing.jpeg" alt="case 17" width="100%"/>

- **[18] Get HTML Code** :<br>
  Get HTML Code from website link

- **[0] Exit** :<br>
  Exit the program.

</details>

### # Features

<details open>

- Login system
- Captcha system
- Register system
- Free trial system
- Auto login system
- Auto update system
- Auto play backsound

</details>

### # Benefits

<details open>

- Auto login
- No captcha
- Free updates
- Unlimited use
- Unlock all features
- Key reset guarantee
- Priority support

</details>

---

## 🤝 Feedback & Issues

> [!IMPORTANT]
> 
> **✅ You can:**
> - Report bugs by opening an issue
> - Suggest features via issues
> - Request documentation improvements
> 
> **❌ You cannot:**
> - Submit code changes (proprietary codebase)
> - Access source code for modification
> 
> **Support:** Available for licensed users via [Telegram](https://t.me/dcodemaxz)

---

## 🪪 License

> [!WARNING]
> 🔒 **Proprietary Software License** - [View full terms](LICENSE.md)

<!-- Wave Footer Divider -->
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif">

<div align="center">

<p><strong>🌐 Community</strong></p>

<table width="100%" cellspacing="0" cellpadding="10">
<tr>
<td align="center" valign="top">

<!-- Item 1: Group -->
<div style="margin-bottom: 40px; padding: 20px; max-width: 300px;">
  <div style="width: 50px; height: 2px; background: linear-gradient(90deg, transparent, #333, transparent); margin: 10px auto;"></div>
  <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Loudspeaker.png" width="50" /><br><strong>WhatsApp Group</strong>
  <p style="margin: 10px 0;">Ask questions, share ideas & help</p>
  <div style="width: 50px; height: 2px; background: linear-gradient(90deg, transparent, #333, transparent); margin: 10px auto;"></div>
  <a href="https://chat.whatsapp.com/GlNdk54lm9V7C4U54SXnh1" style="text-decoration: none;">
    <img src="https://img.shields.io/badge/Join-Group-25D366?logo=whatsapp&logoColor=25D366">
  </a>
</div>

  ---

<!-- Item 2: Channel -->
<div style="margin-bottom: 40px; padding: 20px; max-width: 300px;">
  <div style="width: 50px; height: 2px; background: linear-gradient(90deg, transparent, #333, transparent); margin: 10px auto;"></div>
  <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Bell.png" width="50" /><br><strong>WhatsApp Channel</strong>
  <p style="margin: 10px 0;">Official updates & announcements</p>
  <div style="width: 50px; height: 2px; background: linear-gradient(90deg, transparent, #333, transparent); margin: 10px auto;"></div>
  <a href="https://whatsapp.com/channel/0029VbBotdf1noz7cQLbTw45" style="text-decoration: none;">
    <img src="https://img.shields.io/badge/Follow-Channel-25D366?logo=whatsapp&logoColor=25D366">
  </a>
</div>

  ---

<!-- Item 3: Review -->
<div style="padding: 20px; max-width: 300px;">
  <div style="width: 50px; height: 2px; background: linear-gradient(90deg, transparent, #333, transparent); margin: 10px auto;"></div>
  <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Video%20Camera.png" width="50" /><br><strong>Review Tool</strong>
  <p style="margin: 10px 0;">Watch tutorials & feature reviews</p>
  <div style="width: 50px; height: 2px; background: linear-gradient(90deg, transparent, #333, transparent); margin: 10px auto;"></div>
  <a href="https://youtu.be/xtTc9DaPi3k?si=s_stUbn5dghmt7rI" style="text-decoration: none;">
    <img src="https://img.shields.io/badge/Watch-YouTube-FF0000?logo=youtube&logoColor=FF0000">
  </a>
</div>
  
</td>
</tr>
</table>

</div>

<!-- Wave Footer Divider -->
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif">

<div align="center">

  <!-- Repobeats Analytics -->
  <p><strong>📊 RepoBeats Analytics</strong></p>
  <img src="https://repobeats.axiom.co/api/embed/29a62a04d29122a248be6ec0912bdcc897fc2041.svg" width="700" alt="Repobeats Analytics"/>

---

  <!-- Star History -->
  <p><strong>🌟 Star History</strong></p>
  <a href="https://star-history.com/#dcodemaxz/arctryx&Date">
    <img src="https://api.star-history.com/svg?repos=dcodemaxz/arctryx&type=Date" width="700" alt="Star History Chart"/>
  </a>

  <hr/>

  <p><strong>Copyright | <a href="https://github.com/dcodemaxz">© 2025 - 2026 dcodemaxz</a></strong></p>

<!-- Wave Footer -->
<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=EEEEEE&height=140&section=footer&text=Thank%20You!&fontSize=42&fontAlignY=65&animation=twinkling&fontColor=000" width="100%" alt="Footer"/>
</p>

</div>
