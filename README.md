<p align="center">
  <img src="https://i.ibb.co/2hf5hd0/android-chrome-512x512-modified.png" alt="WPDL Logo" width="200px">
</p>

<h1 align="center">WP-Downloader Android</h1>

<p align="center">
  Make everything so simple.
  <br/><br/>
  This will guide you to use <a href="https://github.com/MaximilianGT500/wp-downloader">WP Downloader</a>, in an Android device in localhost.
  <br/><br/>
</p>

> [!TIP]
> For iOS, you may try to configure [iSH](https://github.com/ish-app/ish), the [Termux](https://github.com/termux/termux-app) equilent. Most of the configuration would be the same.

> [!NOTE]
> Note that this documentation is absolutely **NOT For Seniors**. It's for noobs. 
<br/>

---

<br/>

- ## Get Started

  - ### What we will do?
    We'll use [Termux](https://github.com/termux/termux-app), a Linux Terminal Emulator, to install NodeJS, and ru [WP-Downloader](https://github.com/MaximilianGT500/wp-downloader).

> [!TIP]
> We are going to do the same [we used to do in Desktop](https://www.wp-downloader.wiki/installation-eng#windows), but not now (thanks to [Electron Wrapper](https://wpdl.rf.gd), in Android. 
<br/>

---

> [!NOTE]
> For additional information on [wp-downloader](https://github.com/MaximilianGT500/wp-downloader) source repo, visit [source repo](https://github.com/MaximilianGT500/wp-downloader)

<br/>

---

<br/>

## 🟢 Steps to Install, Configure & Run for **FIRST TIME**

> [WARNING]
> When running commands in Termux terminal, you should **NOT** click on Termux terminal, it'll pause the process, and if you paused process, you need to resume it by pressing `Enter` key.

> [!TIP]
> Use `Copy` button in the right end of the bash code block to avoid errors caused by typos. 

  - ### Install Termux
    First of all, we need to install [Termux](https://github.com/termux/termux-app), Teminal Emulator in Android. You can download it from [FDroid](https://f-droid.org/en/packages/com.termux/), or from [GitHub Releases](https://github.com/termux/termux-app/releases), or just install from [Play Store](https://play.google.com/store/apps/details?id=com.termux). It's just as a normal app and so you can install it.

  - ### Open Termux
    Make sure you have active internet connection. Open Termux, just like a normal app, it'll ask for Notification Permissions, we reccomend you allow Notifications. And then it'll install `Boostrap Packages`. And will automatically done.

  - ### PKG Update
    After `Boostrap Packages` are installed, in the CLI, execute following command. This command checks the package repositories for any updates to the Termux package lists. 
    ```bash
    pkg update
    ```
    Then wait...
    
  - ### PKG UPGRADE 
    After previous action completed, execute following command. This will upgrade already installed packages to the latest versions, which's recommended.
    ```bash
    pkg upgrade
    ```
    It'll ask if should continue, give `y` and press Enter, to continue when asked. 

  - ### Install Git
    We need to install `git` to clone `WP-Downloader` repo. So execute following comand to install `git`
    ```bash
    pkg install git
    ```
    It'll ask if should continue, give `y` and press Enter, to continue when asked.

  - ### Install NodeJS
    We need to have `NodeJS` installed to run `WP-Downloader`. So execute the following command to install latest `NodeJS`.
    ```bash
    pkg install nodejs
    ```
    It'll ask if should continue, give `y` and press Enter, to continue when asked.

  - ### Clone Repository
    Now we need to clone `WP-Downloader` repository with `git`. To do that execute following command.
    ```bash
    git clone https://github.com/MaximilianGT500/wp-downloader.git
    ```
    And wait till git clones the repo.
    
> [!WARNING]
> You must add `.git` at the end of the repository URL to clone without loggin into GitHub
 
  - ### Change Directory
    Further commands are to be performed to configure and run `WP-Downloader`, so we need to change directory to clonned `wp-downloader` folder. So execute the following command.
    ```bash
    cd wp-downloader
    ```
    And now we are in `wp-downloader` directory

 - ### Install node-modules
   `WP-Downloader` use some third party dependancies, so we need to install them, so execute the following command. (We're executing this command inside `wp-downloader` directory.
   ```bash
   npm install
   ```

- ### Install PM2
  Since we're in Android, it's beneficial to have `pm2`, so we can run `wp-downloader` in background. So execute the following command to install `pm2`. Note that we're installing pm2 globally with `-g`.
  ```bash
  npm install pm2 -g
  ```
  It'll ask if should continue, give `y` and press Enter, to continue when asked.

- ### Run WP-Downloader
  Now the final step to run WP-Downloader. We can run it with `pm2`. So execute the following command.
  ```bash
  pm2 start npm --name "wpdl" -- run start
  ```
  And, this will deploy `WP-Downloader` to localhost. And the name for `pm2` is `wpdl` in this case.

> [!CAUTION]
> Note that **there is a space** between `--` and `run`. So it's `-- run`. <br/>But it **is** `--name` and **is without spaces** between `--` and `name`<br/>

- ### Save PM2
  It's beneficial if it can restart the `WP-Downloader` app when Termux is restarted, or when System is restarted. So let's save pm2 configuration so we can manage it more easily.
  ```bash
  pm2 save
  ```

- ### Use WP-Downloader
  Now that WP-Downloader is succesfully deploted to localhost, we can access it via web browser. Go to following location, by entering it to addressbar of any Browser. Be sure to use addressbar, and without any other text in addressbar other than the location bellow.
  ```
  localhost:3000
  ```
  The app is deployed to localhost and the port is `3000` that's why we use this location. And, now you should see WP-Downloader app loaded in your Web Browser, in the address of `localhost:3000`


> [!TIP]
> Here's a short demonstration how to install, configure and run for first time

https://github.com/user-attachments/assets/58603d72-0456-4aa1-b136-a7cb0263b1d9

<br/>

---

<br/>

## 🟢 Run WP-Downloader - **NOT For First Use**
  If you have installed and configured `WP-Downloader` as guided above, but the app is not running in `localhost` you need to start it with pm2 in Termux

- ###  Open Termux
  Open Termux, just like a normal app

- ### Change Directory
  We need to change directory to where we clonned. The directory name was `wp-downloader`. So execute the following command to change directory.
  ```bash
  cd wp-downloader
  ```

- ### Run WP-Downloader
  As we've configured ealier, what we have to do is just run the app. So execute the following command. (We're not inside `wp-downloader` directory)
  ```bash
  pm2 start npm --name "wpdl" -- run start 
  ```
  
- ### Use WP-Downloader
  Now that WP-Downloader is succesfully deploted to localhost again, we can access it via web browser. Go to following location, by entering it to addressbar of any Browser. Be sure to use addressbar, and without any other text in addressbar other than the location bellow.
  ```
  localhost:3000
  ```
  The app is deployed to localhost and the port is `3000` that's why we use this location. And, now you should see WP-Downloader app loaded in your Web Browser, in the address of `localhost:3000`

<br/>

---

<br/>

## 🟢 Stop & Restart WP-Downloader - **NOT For First Use**

- ### Stop WP-Downloader
  You may want to stop WP-Downloader, [You can start again with just a singal command (guided above)]. In that case you can execute the following command. </br>Note that we don't want to change the directory to restart or stop an app.
  ```bash
  pm2 stop "wpdl"
  ```
  Note that "wpdl" is the same app name that we used when running it. Note that we can use any name for it but have to use the same one until we stop and start the app again. For ease of use, just use the predefined value "wpdl". You don't need to change anything.
  And the service will be stopped.

- ### Restart WP-Downloader
  In any case, if you want to restart the WP-Downloader, you can execute the following command. </br>Note that we don't want to change the directory to restart or stop an app.
  ```bash
  pm2 restart "wpdl"
  ```
  And it'll restart the app.

