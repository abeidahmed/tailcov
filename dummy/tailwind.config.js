module.exports = {
  purge: {
    enabled: process.env.PRODUCTION,
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
