# [🔥 2025] REST API Service for Instagram Private API

Allows you to use the Instagram Private API on any operating system from any programming language (C++, C#, F#, D, Golang, Erlang, Elixir, Nim, Haskell, Lisp, Closure, Julia, R, Java, Kotlin, Scala, OCaml, JavaScript, Crystal, Ruby, Rust, Swift, Objective-C, Visual Basic, .NET, Pascal, Perl, Lua, PHP and others) to automate the work of your accounts. 

Based on: https://github.com/subzeroid/instagrapi

# Features

1. Authorization: Login, support 2FA and manage settings
2. Media: info, delete, edit, like, archive and much more else
3. Video: download, upload to feed and story
4. Photo: download, upload to feed and story
5. IGTV: download, upload to feed and story
6. Clip (Reels): download, upload to feed and story
7. Album: download, upload to feed and story
8. Story: info, delete, seen, download and much more else
9. User: followers/following, info, follow/unfollow, remove_follower and much more else
10. Insights: media, account

# Quick start

Run docker container:
```
docker run -p 8000:8000 grabsu/instagram-rest-api:1.0.0
```

or use docker-compose.yml:
```
services:

    instagram-rest-api:
        container_name: instagram-rest-api
        image: grabsu/instagram-rest-api:1.0.0
        restart: always
        ports:
          - "8000:8000"
        volumes:
            - ./db.json:/app/db.json
```

# Usage

Open in browser [http://localhost:8000/docs](http://localhost:8000/docs) and enjoy!

![img.png](docs/img.png)
Best Practices: [best-practices.html](https://subzeroid.github.io/instagrapi/usage-guide/best-practices.html)<br>
Usage Guide: [fundamentals.html](https://subzeroid.github.io/instagrapi/usage-guide/fundamentals.html)

# Support

Support chat in Telegram: [t.me/instagram_rest_api](https://t.me/instagram_rest_api)