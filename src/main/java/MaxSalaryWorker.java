import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MaxSalaryWorker {
    private String name;
    private int salary;
    @Override
    public String toString() {
        return "Name: " + name + ", salary=" + salary + "\n";
    }
}
