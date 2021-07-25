module.exports = {
  purge: {
    enabled: true,
    preserveHtmlElements: false,
    content: ["../app/components/**/*.{html.erb,rb}"],
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
