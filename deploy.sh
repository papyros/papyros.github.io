#!/bin/bash
set -e

if [ -n "$TRAVIS_BUILD_ID" ]; then
    # When running on Travis we need to use SSH to deploy to GitHub
    #
    # The following converts the repo URL to an SSH location,
    # decrypts the SSH key and sets up the Git config with
    # the correct user name and email (globally as this is a
    # temporary travis environment)
    #
    # Set the following environment variables in the travis configuration (.travis.yml)
    #
    #   DEPLOY_BRANCH    - The only branch that Travis should deploy from
    #   ENCRYPTION_LABEL - The label assigned when encrypting the SSH key using travis encrypt-file
    #   GIT_NAME         - The Git user name
    #   GIT_EMAIL        - The Git user email
    #
    echo SOURCE_BRANCH: $SOURCE_BRANCH
    echo ENCRYPTION_LABEL: $ENCRYPTION_LABEL
    echo GIT_NAME: $GIT_NAME
    echo GIT_EMAIL: $GIT_EMAIL

    if [ "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ]; then
        echo "Travis should only deploy from the SOURCE_BRANCH ($SOURCE_BRANCH) branch"
        exit 0
    else
        if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
            echo "Travis should not deploy from pull requests"
            exit 0
        else
            ENCRYPTED_KEY_VAR=encrypted_${ENCRYPTION_LABEL}_key
            ENCRYPTED_IV_VAR=encrypted_${ENCRYPTION_LABEL}_iv
            ENCRYPTED_KEY=${!ENCRYPTED_KEY_VAR}
            ENCRYPTED_IV=${!ENCRYPTED_IV_VAR}
            REPO=${REPO/git:\/\/github.com\//git@github.com:}

            # The `deploy_key.enc` file should have been added to the repo and should
            # have been created from the deploy private key using `travis encrypt-file`
            openssl aes-256-cbc -K $ENCRYPTED_KEY -iv $ENCRYPTED_IV -in deploy_key.enc -out deploy_key -d

            chmod 600 deploy_key
            eval `ssh-agent -s`
            ssh-add deploy_key
            git config --global user.name "$GIT_NAME"
            git config --global user.email "$GIT_EMAIL"
        fi
    fi
fi

octopress deploy
