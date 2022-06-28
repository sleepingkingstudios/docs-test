---
layout: reference
---

# Doubtful Space Program

An example project to evaluate GitHub Pages-based versioned documentation.

> This is the documentation for the
> [current development version](https://github.com/sleepingkingstudios/docs-test).
> For previous versions, see [Versions]({{site.baseurl}}/versions).

Collections
: {% for collection in site.collections -%}
  - {{ collection.label }} ({{ collection.directory }})
  {% endfor %}

## Introduction

You are not going to space today.

## Creating Rockets

This area under construction. Unlike your rockets.

## Quick Reference

Doubtful Space Program defines the following entities:

### Parts

A `Space::Part` is an individual rocket component.

[Go To Parts](./reference/part)

### Rockets {#space-goers}

A `Space::Rocket` is a fully assembled, ready to launch piece of space machinery.

[Go To Rockets](./reference/rocket)

## Planets

See [Planets](./planets).
