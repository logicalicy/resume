# Timeline Resume

A simple resume with experiences listed in a timeline.

Your resume is configurable through a single JSON file called `profile.json`.

## Screenshot

![alt tag](https://raw.githubusercontent.com/logicalicy/resume/master/Screenshot.png)

## Installation

You'll need:
- [Ruby on Rails](http://guides.rubyonrails.org/getting_started.html)
- [git](http://git-scm.com/)

## Usage

_Note: Full deployment instructions are not in the scope of this README._

1. Clone the repository:

        # git clone git@github.com:logicalicy/resume.git

2. Configure your resume and upload an avatar/profile picture. (See "Configure Your Resume" below.)

3. Install dependencies and start your server:

        # cd resume
        # bundle install
        # rake assets:precompile
        # rails server

4. Access your resume at `http://localhost:3000`

### Configure Your Resume

Write everything you want your resume to show in `app/assets/config/profile.json`.
`profile.json` looks like this:

        {
            "name": "John Doe",
            "avatar": "avatar.png",
            "sidebar": {
                "background_color": "#000",
                "text": {
                    "color": "#999",
                    "color_on_hover": "#FFF"
                },
                "icon_color": "#999"
            },
            "experiences": [
                {
                    "organisation": "Example organisation",
                    "start_date": "Dec 2 2014",
                    "description": "Description.",
                    "icon": {
                        "fontawesome_class": "gamepad",
                        "bootstrap_state": "primary"
                    }
                },
                {
                    "organisation": "Another example",
                    "start_date": "Mar 15 2013",
                    "end_date": "Nov 30 2014",
                    "description": "Another description."
                }
            ]
        }

All colors are CSS colors. So, if you want:
- Black, use `"#000"` or `"black"`
- White, use `"#FFF"` or `"white"`

See next sections about `avatar` and `icon` properties in `profile.json`.

#### `avatar` Property

This property controls which image to display in the top left corner of the resume.

You can add your own image in the path `app/assets/images` and change the `avatar` property to the image filename.
E.g. If you have an image called `image.jpeg`, add your image to `app/assets/images` and set `avatar` property:

        {
            ...
            "avatar": "image.jpeg",
            ...
        }

#### `icon` Property

This is a property in the `experiences` property.
It controls:
- The [Font Awesome](http://fortawesome.github.io/Font-Awesome/icons/) icon to display next to your experience.
- The [Bootstrap](http://getbootstrap.com/css/) color/state to use for the badge/icon in the timeline for your experience.

If you want the `facebook-official` [Font Awesome](http://fortawesome.github.io/Font-Awesome/icons/) icon and `primary` [Bootstrap](http://getbootstrap.com/css/) state, for example, set them in the `icon` property:

        {
           "experiences": [
            {
              ...
                "icon": {
                    "fontawesome_class": "facebook-official",
                    "bootstrap_state": "primary"
                }
            },
            ...
        }

## Contributing

TODO: Write about contributing.

## History

TODO: Write about history

## Credits

Credits to some resources and snippet creators that helped create this simple resume:
- [Bootsnipp.com](http://bootsnipp.com)
- [Michael V Nguyen](http://mvnguyen.com)
- [sergiors](http://bootsnipp.com/snippets/featured/timeline)

A special thanks to [Faethon](https://github.com/faethonm) for his timeline idea for resumes.

## License

See [LICENSE](LICENSE) file.