import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class YoungestEldestWorker {
    private String type;
    private String name;
    private String birthday;

    @Override
    public String toString() {
        return "Type: '" + type + '\'' + ", name='" + name + '\'' + ", birthday='" + birthday + '\'' + "\n";
    }
}
