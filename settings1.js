var settings = jps.settings;
var fields = {};

for (var i = 0, field; field = jps.settings.fields[i]; i++)
  fields[field.name] = field;

fields["le-addon"].value = false;

return {
    result: 0,
    settings: settings
};
