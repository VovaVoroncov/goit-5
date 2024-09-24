import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MaxProjectsClient {
    private String name;
    private int projectCount;

    @Override
    public String toString() {
        return "Name: '" + name + '\'' + ", projectCount=" + projectCount + "\n";
    }
}
