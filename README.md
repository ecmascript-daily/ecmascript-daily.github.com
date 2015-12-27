# ECMAScript Daily [![Build Status](https://travis-ci.org/ecmascript-daily/ecmascript-daily.github.com.svg?branch=master)](https://travis-ci.org/ecmascript-daily/ecmascript-daily.github.com)

Daily news blog about ECMAScript.

## [Contributing](./CONTRIBUTING.md)

Please see [Contributing Guideline](./CONTRIBUTING.md)

### How to add News?

1. Create a new file in [_posts/](https://github.com/ecmascript-daily/ecmascript-daily.github.com/tree/master/_posts)`<year>`
2. File name should be `<year>-<month>-<day>-<title>.md`
    - [Writing posts](http://jekyllrb.com/docs/posts/ "Writing posts")
3. Copy the contents of [post.md.template](template/post.md.template) into the file.
4. Fill as many values.(meta data only)
5. Create a pull request from the online editor, or if you're using git from the command line follow the usual steps for making a pull request.

| Property | Required | Description |
|----------|----------|-------------|
| title | ✓ | page's title |
| item-url | ✓ | URL to page |
| date | ✓ | `YYYY-MM-DD HH:MM:SS +/-TTTT` |
| description | ✓ | Short descriptive summary in a few sentence |
| related |  | related page list |
| tags |  | tag list |


## License

CC-BY - [Creative Commons — Attribution 4.0 International — CC BY 4.0](https://creativecommons.org/licenses/by/4.0/ "Creative Commons — Attribution 4.0 International — CC BY 4.0")