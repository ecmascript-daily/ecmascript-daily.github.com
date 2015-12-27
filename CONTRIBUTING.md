# Contributing Guide Line

## How to fix post?

1. Fix some thing in the post.md
2. Create a pull request :)

Shortcut:

1. Visit a page to fix.
2. Click "Edit on GitHub" link.
3. Fix it and Commit it
4. Create a pull request :)

![Edit on github](https://monosnap.com/file/WQRU7aBlP0tr2ovju6zW6uTOkqUdL6.png)

## How to post News?

1. Create a new file in [_posts/](https://github.com/ecmascript-daily/ecmascript-daily.github.com/tree/master/_posts)`<year>`
2. File name should be `<year>-<month>-<day>-<title>.md`
    - [Writing posts](http://jekyllrb.com/docs/posts/ "Writing posts")
3. Copy the contents of [post.md.template](template/post.md.template) into the file.
4. Fill as many values.(meta data only)
5. Create a pull request from the online editor, or if you're using git from the command line follow the usual steps for making a pull request.

| Property | Required | Description |
|----------|----------|-------------|
| title | ✓ | page's title |
| item-url | ✓ | page's URL |
| date | ✓ | `YYYY-MM-DD HH:MM:SS +/-TTTT` |
| description | ✓ | Short descriptive summary in a few sentence |
| related |  | related page list |
| tags |  | tag list |


### Preview ECMAScript Daily Locally

This site is built using jekyll.
To preview on your local machine, clone this repository and run

```sh
git clone https://github.com/ecmascript-daily/ecmascript-daily.github.com.git
cd ecmascript-daily.github.com
# if you not installed bundle, please do `gem install bundle`
bundle install
bundle exec jekyll serve
# open http://0.0.0.0:4000/
```