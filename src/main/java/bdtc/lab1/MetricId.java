package bdtc.lab1;

public class MetricId {
    private String _metricid;
    public MetricId(String input) {
        _metricid = "Node" + input + "CPU";
    }
    public String get_metricid() {
        return _metricid;
    }
}