---
title: "Angka ke Terbilang"
date: 2018-02-08T15:38:38+07:00

projectURL: "https://github.com/indmind/akt"
categories: ["project"]
tags: ["golang", "indonesia", "algorithm"]
author: "Indmind"
---

 [Golang](https://golang.org/) library to convert number to Indonesian word (spelled out)

### Installation

`$ go get github.com/indmind/akt`

### Usage

```Go
package main

import (
	"fmt"

	"github.com/indmind/akt"
)

func main() {
	terbilang := akt.Convert("13500")

	fmt.Println(terbilang) // tiga belas ribu lima ratus
}
```
