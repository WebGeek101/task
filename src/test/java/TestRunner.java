import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/resources/features",
		glue = "com.pavan.task.steps",
		tags = "not @skip",
		plugin = {"pretty", "json:target/cucumber-report.json"},
		publish = true
)

public class TestRunner {
}