# External workspace stop trigger

This is a workaround for Gitpod organization admins to manually force stop a Gitpod workspace of any organization member, in case they forget to stop it after setting a long `gp timeout` value.

# How to set up

## Quick method

If you're not using a [custom workspace image](https://www.gitpod.io/docs/configure/workspaces/workspace-image#configuring-a-workspace-image), this might be the easiest:
- Go to https://gitpod.io/settings
- Scroll down to `Workspace images` option and click on "Change" button.
- In the `Default Image` input field, enter the following and save:
```
axonasif/workspace-full-stop@sha256:58217440cf2149d14b42e6ae53bbcd27b2bc2ee1f1050cd06ceac2c057d05f7e
```

## Integrate with custom or existing image

Just copy the contents from [Dockerfile](./Dockerfile) to your own Dockerfile (except the `FROM` statement)

# How to use

- Find the workspace ID that you want to stop from https://gitpod.io/usage
- Open this repo on Gitpod: https://gitpod.io/github.com/gitpod-samples/workspace-stop
- You should see a open terminal on the bottom asking for a workspace id, simply paste the ID there and press enter/return.
- If you want to stop multiple workspaces in bulk, then create a new terminal and provide all your workspace IDs separated by space: `./stop wsid1 wsid2 wsid3`

