# It's About Time!

Life is short, we'd like to enjoy every moment of every day.

## Table of content

[Requirements](#Requirements)  
[Usage](#Usage)  
  - [Install Dependency](#Install-Dependency)  
  - [Prepare Database](#Prepare-Database)
  - [Start server](#Start-server)
  - [Check routes](#Check-routes)

## Requirements

- Ruby version 2.6.0
- Rails version 5.2.3
- PostgreSQL 11.3

## Usage

### Install Dependency

```s
$ bundle install
```

### Prepare Database

If you didn't have database.

```s
$ rails db:create
```

And run migration to create tables.

```s
$ rails db:migrate
```

### Start server

Start Rails server.

```s
$ rails s
```

### Check routes:

Check rails routes for more detail:

```
$ rails routes
```

## Models

### Table schema