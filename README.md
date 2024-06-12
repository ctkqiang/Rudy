# Rudy攻击
Rudy攻击"是一种利用低速数据传输来阻塞服务器，从而造成拒绝服务（DoS）的网络攻击。这种攻击利用了服务器的资源限制，通过发送大量的低速数据包或者特殊构造的数据请求，使得服务器在处理这些请求时消耗大量的资源，导致服务器无法处理其他正常的请求，从而造成服务中断或延迟。

通常情况下，服务器在处理网络请求时会限制每个连接或者每个 IP 地址的带宽或连接数，以防止恶意用户通过占用大量资源来影响其他用户的正常使用。然而，Rudy攻击利用了这个限制的漏洞，通过发送大量的低速数据包，来消耗服务器的带宽和资源，从而达到拒绝服务的目的

## Installation
Run: 
```bash
make install
```
then
```bash
make build
```

## Usage

```bash
make run
```

##### 以下是程序演示的示例，以及输出结果:

1. 列出所有端点
```bash
请输入您要攻击的URL：
https://www.baidu.com
===== RUDY 攻击 ======
 列出所有端点

+--------------------------+
| 端点                     |
+--------------------------+
| /                        |
| /                        |
| //home.baidu.com         |
| //www.baidu.com/duty     |
| //help.baidu.com         |
| //www.baidu.com/licence/ |
+--------------------------+

共找到 6 个端点.
```
2. 列出所有 Cookie 

```bash
请输入您要攻击的URL：
abc.cn
===== RUDY 攻击 ======
 列出所有 Cookie

| 名称: _abck
| 值: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
| 域: abc.cn
| 路径: /
| 过期时间: 2025-06-13 00:47:24 +0800
| 安全: true
--------------------------------------------------
| 名称: ak_bmsc
| 值: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
| 域: abc.cn
| 路径: /
| 过期时间: 2024-06-13 02:47:24 +0800
| 安全: false
--------------------------------------------------
| 名称: bm_sz
| 值: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
| 域: abc.cn
| 路径: /
| 过期时间: 2024-06-13 04:47:24 +0800
| 安全: false
--------------------------------------------------
```

### 个人捐赠支持
如果您认为该项目对您有所帮助，并且愿意个人捐赠以支持其持续发展和维护，🥰我非常感激您的慷慨。
您的捐赠将帮助我继续改进和添加新功能到该项目中。 通过财务捐赠，您将有助于确保该项目保持免
费和对所有人开放。即使是一小笔捐款也能产生巨大的影响，也是对我个人的鼓励。

以下是我的支付宝二维码，您可以扫描二维码进行个人捐赠：

<br />
<div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
  <img src="https://github.com/ctkqiang/ctkqiang/blob/main/assets/IMG_9863.jpg?raw=true" style="height: 500px !important; width: 350px !important;">
 
  <img src="https://github.com/ctkqiang/ctkqiang/blob/main/assets/IMG_9859.JPG?raw=true" style="height: 500px !important; width: 350px !important;">
</div>


[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/F1F5VCZJU)

## 爱心捐款
<a href="https://qr.alipay.com/fkx19369scgxdrkv8mxso92"><img src="https://img.shields.io/badge/alipay-00A1E9?style=for-the-badge&logo=alipay&logoColor=white"></a> <a href="https://ko-fi.com/F1F5VCZJU"><img src="https://img.shields.io/badge/Ko--fi-F16061?style=for-the-badge&logo=ko-fi&logoColor=white"></a> <a href="https://www.paypal.com/paypalme/ctkqiang"><img src="https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white"></a> <a href="https://donate.stripe.com/00gg2nefu6TK1LqeUY"><img src="https://img.shields.io/badge/Stripe-626CD9?style=for-the-badge&logo=Stripe&logoColor=white"></a>

## 关注我
<a href="https://twitch.tv/ctkqiang"><img src="https://img.shields.io/badge/Twitch-9146FF?style=for-the-badge&logo=twitch&logoColor=white"></a> <a href="https://open.spotify.com/user/22sblyn4dsymya3xinw3umhai"><img src="https://img.shields.io/badge/Spotify-1ED760?&style=for-the-badge&logo=spotify&logoColor=white"></a> <a href="https://www.tiktok.com/@ctkqiang"><img src="https://img.shields.io/badge/TikTok-000000?style=for-the-badge&logo=tiktok&logoColor=white"></a> <a href="https://stackoverflow.com/users/10758321/%e9%92%9f%e6%99%ba%e5%bc%ba"><img src="https://img.shields.io/badge/Stack_Overflow-FE7A16?style=for-the-badge&logo=stack-overflow&logoColor=white"></a> <a href="https://www.facebook.com/JohnMelodyme/"><img src="https://img.shields.io/badge/Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white"></a> <a href="https://github.com/ctkqiang"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a> <a href="https://www.instagram.com/ctkqiang"><img src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white"></a> <a href="https://www.linkedin.com/in/ctkqiang/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a> <a href="https://linktr.ee/ctkqiang.official"><img src="https://img.shields.io/badge/linktree-39E09B?style=for-the-badge&logo=linktree&logoColor=white"></a> <a href="https://github.com/ctkqiang/ctkqiang/blob/main/assets/IMG_9245.JPG?raw=true"><img src="https://img.shields.io/badge/WeChat-07C160?style=for-the-badge&logo=wechat&logoColor=white"></a>
