import com.hivext.api.Response;
import org.yaml.snakeyaml.Yaml;
import com.hivext.api.core.utils.Transport;

var url = "https://raw.githubusercontent.com/sych74/test/master/quotas/settings.yaml";
var settings = toNative(new Yaml().load(new Transport().get(url)));
var fields = settings.fields;
var Text = "Install Lightning-Fast Premium CDN with 130+ PoPs";
    
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
        "cls": "x-form-cb-label x-unselectable",
        "width": 30,
        "height": 20
    }, {
        "type": "displayfield",
        "cls": "x-item-disabled",
        "value": Text
    }]
});

return {
    result: 0,
    settings: settings
};
