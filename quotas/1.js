import com.hivext.api.Response;
import org.yaml.snakeyaml.Yaml;
import com.hivext.api.core.utils.Transport;

var url = "https://raw.githubusercontent.com/sych74/test/master/quotas/settings.yaml";
var settings = toNative(new Yaml().load(new Transport().get(url)));
var fields = settings.fields;
var Text = "Install Lightning-Fast Premium CDN with 130+ PoPs";
    
fields.push({
    "name": "label1",
    "caption": "Topology",
    "type": "displayfield"
});
        
fields.push({
    "type": "radio-fieldset",
    "name": "test",
    "default": "0-dev",
    "values": {
        "0-dev": "test1",
        "1-prod": "test2"
    }   
});

fields.push({
    type: "checkbox",
    name: "mu-addon",
    caption: "zxczxczxczxczxc",
    value: false
});

return {
    result: 0,
    settings: settings
};
