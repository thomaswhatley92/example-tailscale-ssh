<div align="center">
  <a href="https://koyeb.com">
    <img src="https://www.koyeb.com/static/images/icons/koyeb.svg" alt="Logo" width="80" height="80">
  </a>
  <h3 align="center">Koyeb Serverless Platform</h3>
  <p align="center">
    Deploy a Tailscale Service for SSH on Koyeb
    <br />
    <a href="https://koyeb.com">Learn more about Koyeb</a>
    ·
    <a href="https://koyeb.com/docs">Explore the documentation</a>
    ·
    <a href="https://koyeb.com/tutorials">Discover our tutorials</a>
  </p>
</div>


## About Koyeb and the Tailscale SSH example application

Koyeb is a developer-friendly serverless platform to deploy apps globally. No-ops, servers, or infrastructure management.

This repository is designed to show how to deploy a Tailscale service to Koyeb to allow easy SSH access.  The application runs as a worker Instance, starting Tailscale and configuring it according to a given Tailscale authentication key.  Once deployed, you can SSH into the Koyeb Instance from another machine connected to the Tailscale network.

## Getting Started

Follow the steps below to deploy the Tailscale SSH service to your Koyeb account.

### Requirements

To use this repository, you need:

* A Koyeb account to build the `Dockerfile` and deploy it to the platform.  If you don't already have an account, you can [sign-up for free](https://app.koyeb.com/auth/signup).
* A Tailscale authentication key to authenticate to your Tailscale network. You can generate an appropriate key by signing up for or logging into a [Tailscale account](https://login.tailscale.com/login) and visiting the [keys settings page](https://login.tailscale.com/admin/settings/keys).  Create a key with the **Reusable** and **Ephemeral** options selected for use with Koyeb.

### Deploy using the Koyeb button

The fastest way to deploy the Tailscale SSH service is to click the **Deploy to Koyeb** button below.

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/services/deploy?name=example-tailscale-ssh&type=git&repository=koyeb%2Fexample-tailscale-ssh&branch=main&builder=dockerfile&service_type=worker&instance_type=nano&env%5BTAILSCALE_AUTHKEY%5D=CHANGE_ME)

Clicking on this button brings you to the Koyeb App creation page with the settings pre-configured to launch this application.  Make sure to modify the `TAILSCALE_AUTHKEY` environment variable with your own value during the configuration process.

Once the service is deployed, you can SSH into the `root` account of your Koyeb Instance from another machine to your Tailscale network. The Koyeb Instance's Tailscale hostname should have the following format: `<KOYEB_APP_NAME>-<KOYEB_SERVICE_NAME>`.

_To modify this application example, you will need to fork this repository. Checkout the [fork and deploy](#fork-and-deploy-to-koyeb) instructions._

### Fork and deploy to Koyeb

If you want to customize and enhance this application, you need to fork this repository.

If you used the **Deploy to Koyeb** button, you can simply link your service to your forked repository to be able to push changes.  Alternatively, you can manually create the application as described below.

On the [Koyeb Control Panel](https://app.koyeb.com/), on the **Overview** tab, initiate the app creation and deployment process by clicking **Create Service** and then choosing **Worker**:

1. Select **GitHub** as the deployment source.
2. Select your repository from the menu.
3. Choose your preferred Instance type and region.
4. In the **Builder** section, choose **Dockerfile**.
5. In the **Environment variables** section, add a variable called `TAILSCALE_AUTHKEY` and paste your Tailscale authentication key as the value.
6. Click **Deploy**.

The repository will be pulled, built, and deployed on Koyeb.

Once the service is deployed, you can SSH into the `root` account of your Koyeb Instance from another machine to your Tailscale network. The Koyeb Instance's Tailscale hostname should have the following format: `<KOYEB_APP_NAME>-<KOYEB_SERVICE_NAME>`.

## Contributing

If you have any questions, ideas or suggestions regarding this application sample, feel free to open an [issue](https://github.com/koyeb/example-tailscale-ssh/issues) or fork this repository and open a [pull request](https://github.com/koyeb/example-tailscale-ssh/pulls).

## Contact

[Koyeb](https://www.koyeb.com) - [@gokoyeb](https://twitter.com/gokoyeb) - [Slack](http://slack.koyeb.com/)
