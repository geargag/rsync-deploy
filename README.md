# rsync-deploy

Deploy to a remote server using rsync.

example usage to sync everything in the workspace folder:
```
- name: deploy to server
        uses: geargag/rsync-deploy@master
        env:
          ARGS: "-e -c -r --delete"
          FOLDER: "./"
          DEPLOY_KEY: ${{ secrets.SERVER_SSH_KEY }}
          SERVER_PORT: ${{ secrets.SERVER_PORT }}
          SERVER_IP: ${{ secrets.SERVER_IP }}
          USERNAME: ${{ secrets.USERNAME }}
          SERVER_DESTINATION: ${{ secrets.SERVER_DESTINATION }}
```

If you only want to sync a specific sub-folder you can put that folder in the folder env var instead
