package pt.upskill.vias.services.routes.info;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Service;
import pt.upskill.vias.models.routes.Line;

@Service
public class LineInfoServiceImpl implements LineInfoService {
    @Override
    public String color(JSONObject line) {
        return line.getString("color");
    }

    @Override
    public String text_color(JSONObject line) {
        return line.getString("text_color");
    }

    @Override
    public String short_name(JSONObject line) {
        return line.getString("short_name");
    }

    @Override
    public String name(JSONObject line) {
        return line.getString("name");
    }

    public Line buildLine(JSONObject transit_details) {
        JSONObject jsonLine = transit_details.getJSONObject("line");
        Line line;
        try {
            String short_name = short_name(jsonLine);
            line = new Line(color(jsonLine), text_color(jsonLine), short_name);
        } catch (JSONException e) {
            line = new Line(color(jsonLine), text_color(jsonLine), name(jsonLine));
        }
        return line;
    }
}