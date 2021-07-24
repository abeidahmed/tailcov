# Tailcov

Upcoming Tailwind components built with ViewComponent for Rails.

## Development

Generate the Storybook JSON stories by running the rake task:

```sh
rake view_component_storybook:write_stories_json
```

To build the newly created/updated JSON stories run:

```sh
yarn storybook:build
```

After the build, run:

```sh
rails s
```

Visit `localhost:3000` to see your stories.
