## Folder structure

- `/src` contains all the `backend` server/service code.
- `/public` folder contains the `frontend` code.

## How to do development

- Run following commands

```sh
make upd
make cmd

# The you'll connect to the shell of the container

# Everytime you do a modification run
npm run build && npm start
```

- Start service

```sh
make start
```

# Additional info

## Make file

```sh
make upd        # Run service in the background
make cmd        # Run the service and connect to the `bash`
make down       # Tear down the service
make start      # Start the service. Default port is 8080
make clean      # Clean containers in `exited` status.
```

## NPM commands

```sh
npm i               # install packages
npm run build       # Build project
npm t               # Run tests
npm start           # Run the app.
npm run lint        # Run lint
npm run fix:lint    # Fix lint issues
```

## Pre commit hook

- Run `chmod +x ./husky/pre-commit` to enable pre commit hook.
