# Shyness

Shyness is a gem designed to allow students to allow students to post questions they have to a [website](https://stark-oasis-58079.herokuapp.com/questions) from the command line without raising their hand.

Inspirations for the names [Ask](https://github.com/s-espinosa/ask) and Shyness are courteousy of [Moz](https://www.youtube.com/watch?v=zoo9Vu1a9bU)

## Installation

At the command line enter

```
$ gem install shyness
```

## Usage

In order to use shyness from the command line, run the following command:

```
$ shyness ask "Your question here!"
```

Shyness also comes prepackaged with the ability to generate an alias so that you can simply enter `sa` instead of `shyness ask` before your question.

```
$ shyness add_alias
$ source ~/.bash_profile
$ sa "Your new question here!"
```

You should only need to run the `add_alias` and `source` commands above once. After that, you can use `sa` for all future questions.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/s-espinosa/shyness. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

Future development plans include:

* Allowing users to set the route to which they will post.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Shyness project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/shyness/blob/master/CODE_OF_CONDUCT.md).
