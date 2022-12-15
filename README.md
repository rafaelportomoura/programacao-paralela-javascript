# Default Typescript Boilerplate

This repository contains the boilerplate to work with typescript. 

## Install dependencies:

```sh
yarn
```


### Husky

[git-hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)  
[husky homepage](https://typicode.github.io/husky/#/)  
[husky npm](https://www.npmjs.com/package/husky)  

To install husky, use:

```sh
yarn prepare
```

- Pre-commit
  ```sh
  npx husky add .husky/pre-commit "yarn concurrently -r \"yarn lint-staged\" \"yarn build --noEmit\""
  ```

- Prepare-commit-msg
  ```sh
  npx husky add .husky/prepare-commit-msg "exec < /dev/tty && yarn git-cz --hook || true"
  ```
  ```sh
  npx husky add .husky/prepare-commit-msg "yarn devmoji --edit"
  ```

- Commit-msg  
  *next release*
  ```sh
  npx husky add .husky/commit-msg ""
  ```

- Pre-push
  ```sh
  npx husky add .husky/pre-push "yarn concurrently -r \"yarn test:cov\"
  ```

- Merge
  ```sh
  npx husky add .husky/post-merge "yarn"
  ```

### Commitizen

```sh
yarn commitizen init cz-conventional-changelog --yarn --dev --exact
```
