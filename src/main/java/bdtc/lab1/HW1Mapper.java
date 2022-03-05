package bdtc.lab1;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;


public class HW1Mapper extends Mapper<LongWritable, Text, Text, IntWritable> {

    private final Text word = new Text();
    private IntWritable val = new IntWritable();

    @Override
    protected void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        this.parseInput(value);
        context.write(word, val);
    }

    public void parseInput(Text value) {
        String line = value.toString();
        String[] item = line.split(",");
        String id = item[0].trim();
        String timestamp = item[1].trim();
        val = new IntWritable(Integer.parseInt(item[2].trim()));
        long time_tmp = Long.parseLong(timestamp)/60000;
        String time_convert = Long.toString(time_tmp);
        MetricId metricId = new MetricId(id);
        word.set(metricId.get_metricid() + ", " + time_convert);
    }
}