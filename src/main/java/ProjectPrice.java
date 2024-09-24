import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProjectPrice {
    private String id;
    private int price;

    @Override
    public String toString() {
        return "Id: '" + id + '\'' + ", price=" + price + "\n";
    }
}
