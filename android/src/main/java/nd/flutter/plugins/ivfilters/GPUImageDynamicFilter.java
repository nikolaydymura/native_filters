package nd.flutter.plugins.ivfilters;

import android.opengl.GLES20;


import java.util.HashMap;
import java.util.Map;

import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilter;

public class GPUImageDynamicFilter extends GPUImageFilter {

    @androidx.annotation.NonNull
    private final Map<String, Map<String, Object>> attributes;
    private final Map<String, Integer> bindings;

    public GPUImageDynamicFilter(String shader, Map<String, Map<String, Object>> attributes) {
        super(NO_FILTER_VERTEX_SHADER, shader);
        this.attributes = attributes;
        bindings = new HashMap<>();
    }

    @Override
    public void onInit() {
        super.onInit();
        for (String key : attributes.keySet()) {
            if (key.startsWith("input")) {
                bindings.put(key, GLES20.glGetUniformLocation(getProgram(), key));
            }
        }
    }

    @Override
    public void onInitialized() {
        super.onInitialized();
        for (String key : attributes.keySet()) {
            if (key.startsWith("input")) {
                int location = bindings.get(key);
                final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
                String attributeClass = (String) attribute.get("AttributeClass");
                if (attributeClass.equalsIgnoreCase("float")) {
                    if (attribute.get("AttributeCurrent") != null) {
                        setFloat(location, floatValue(attribute.get("AttributeCurrent")));
                    } else {
                        setFloat(location, floatValue(attribute.get("AttributeDefault")));
                    }
                } else if (attributeClass.equalsIgnoreCase("float[]")) {
                    if (attribute.get("AttributeCurrent") != null) {
                        setFloatVec3(location, (float[]) attribute.get("AttributeCurrent"));
                    } else {
                        setFloatVec3(location, (float[]) attribute.get("AttributeDefault"));
                    }
                }
            }
        }
    }

    public void update(String key, Object value) {
        int location = bindings.get(key);
        final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
        String attributeClass = (String) attribute.get("AttributeClass");
        if (attributeClass.equalsIgnoreCase("float")) {
            setFloat(location, (float) value);
        } else if (attributeClass.equalsIgnoreCase("float[]")) {
            setFloatVec3(location, (float[]) value);
        }
    }

    public float floatValue(Object value) {
        return ((Double) value).floatValue();
    }

}
