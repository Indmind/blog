---
title: "Rin"
date: 2018-02-23T21:54:08+07:00

description: "a simple multi-burpose bot"
featuredImage:  "/images/rin.png"
projectURL: "https://github.com/indmind/rin"
categories: ["Project", "Open Source Friendly"]
tags: ["bot", "discord", "telegram", "nodejs"]
author: "Indmind"
---

<h1 align="center">
  Rin
  <br>
  <sub><sup>a simple multi-burpose bot</sup></sub>
</h1>

<h2>Installation</h2>

Install all dependencies using <a href="https://www.npmjs.com/">npm</a>

`$ npm install`

<h2>Build</h2>

`$ npm run build`

<h2 id="dev">Development</h2>

`cp .env.example .env`

add your token to `.env`

use cli.js (`process.arv`) as input

`$ STATUS=debug npm start calc 1 + 1`

for discord or telegram set `TELEGRAM_TOKEN` or `DISCORD_TOKEN` in `.env`

`$ npm run dev` auto reload (use telegram or discord based on given token)

build and start `main.js` from build

`$ npm start`

you can just add `DISCORD_TOKEN` without `TELEGRAM_TOKEN`

to create a command create a file in `src/commands` folder, create a class that have a method called `handle`, `ready`, and variable `this.INFO` with some data, you can see in other command file

<h3>Info</h3>

`this.INFO` use to define command (__required__), description (__required__), for (__optional__) and required (__optional__)
```js
import Rin from '../core/rin'

export default class Command{
    constuctor() {
        this.INFO = {
            command: 'something',
            description: 'make your life easier',
            for: 'discord' // or array ['discord', 'cli']
            required: [
                {
                    value: process.env.COMMAND_TOKEN,
                    toBe: Rin.notEmpty
                }
            ]
        }
    }
}
```

<h3>Ready</h3>

`ready` is called when `this.INFO.required` passed (__optional__)
```js
import Rin from '../core/rin'

export default class Command{
    constuctor() {
        this.INFO = {
            command: 'sapi',
            description: 'make me happy',
            required: [
                {
                    value: process.env.SAPI_TOKEN,
                    toBe: Rin.notEmpty
                }
            ]
        }

        this.SAPI = new SOMETHING_API()
    }
    
    ready() {
        this.SAPI.register(process.env.SAPI_TOKEN)
    }
}
```

<h3>Handle</h3>

`handle` is called when user type the command
```js
export default class Command{
    constuctor() {
        this.INFO = {
            command: 'kill',
            description: 'kill your ex'
        }
    }
    
    handle(message) {
        const exname = message.join(' ')

        return `${exname} has been killed`
    }
}
```

for helper, create a method in Rin class `src/core/rin.js`

always run `$ npm run lint` if you want to create a PR

<h2>Testing</h2>

`$ npm test`

create a unit test in `test/command` folder for subcommand testing and `test/__data__` for mock data, testing are test src folder, so we don't need to rebuild

<h2>Contributing</h2>

1. Fork this repository
2. Create a feature branch (_never edit your master branch_) `$ git checkout -b add-eat-command`
3. Create your features, see: [development](#dev) section
4. Push your changes `$ git push origin add-eat-command`
5. Create a pull request

I am very happy if you want to contribute!

<h2>License</h2>

This project is licensed under the terms of the MIT license.

Image License: I don't know
