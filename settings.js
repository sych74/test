//checking quotas

var settings = jps.settings;
var fields = {};

for (var i = 0, field; field = jps.settings.main.fields[i]; i++)
  fields[field.name] = field;

fields["le-addon"].value = true;

return {
    result: 0,
    settings: settings
};
