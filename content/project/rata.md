---
title: "Rata"
date: 2018-03-09T09:35:05+07:00

description: "Tidy up your string list"
projectURL: "https://github.com/indmind/rata"
categories: ["Project"]
tags: ["String", "Tidy", "JavaScript"]
author: "Indmind"
---

# Installation

`$ npm install rata`

# Usage

```js
const rata = require('rata')

const data = [
    ["eat", "eat some apples"],
    ["play", "play some music"],
    ["cry", "crying about your life"],
    ["makemehappy", "make happy!"]
]

console.log(rata(data))
```

```
eat         eat some apples
play        play some music
cry         crying about your life
makemehappy make happy!
```

```js
const rata = require('rata')

const data = [
    ["eat", "eat some apples"],
    ["play", "play some music"],
    ["cry", "crying about your life"],
    ["makemehappy", "make happy!"]
]

console.log(rata(data, ' - '))
```

```
eat         - eat some apples
play        - play some music
cry         - crying about your life
makemehappy - make happy!
```