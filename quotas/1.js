import com.hivext.api.Response;
import org.yaml.snakeyaml.Yaml;
import com.hivext.api.core.utils.Transport;

var url = baseUrl + "/configs/settings.yaml";
var settings = toNative(new Yaml().load(new Transport().get(url)));
var fields = settings.fields;
    
settings.fields.push({
    "type": "compositefield",
    "hideLabel": true,
    "pack": "left",
    "itemCls": "deploy-manager-grid",
    "cls": "x-grid3-row-unselected",
    "items": [{
        "type": "spacer",
        "width": 4
    }, {
        "type": "displayfield",
        "cls": "x-grid3-row-checker x-item-disabled",
        "width": 30,
        "height": 20
    }, {
        "type": "displayfield",
        "cls": "x-item-disabled",
        "value": "asdasdasdasd"
        }]
    });
}

return {
    result: 0,
    settings: settings
};
