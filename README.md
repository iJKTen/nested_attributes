# An example application showing how to use nested attributes for

This app was created in Rails 6.0.2.1 and it uses jQuery which you can add via Yarn.

To add jQuery via Yarn
``` yarn add jquery ```

Update your environment.js file found in config/environment.js
```
const webpack = require('webpack');
environment.plugins.prepend('Provide', new webpack.ProvidePlugin({
  $: 'jquery/src/jquery',
  jQuery: 'jquery/src/jquery'
}));
```

The JavaScript code used to create new child elements can be found in app/javascript/packs/nested_attributes.js

The new link should have the following attributes
```<a href="#" data-regex="name-of-the-child-element" data-add-new="id-of-the-container-with-child-elements">```

**name-of-the-child-element**
This will contain the name of the child element like ```parent[child_attributes][_x_][child_field_name]``` and the _x_ will be replaced with the current time. 

**id-of-the-container-with-child-elements**
The if of the container is required to clone and prepend the new elements.

Other implementations of nested_attributes_for were complicated and using link_to_function which were not supported by Rails and you could write your own but for now the JS code is not complicated and still unobtrusive. 

This is not yet complete and there may be many bugs so use with caution. 