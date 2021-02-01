import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
            1,
            1,
            "Whistle Pig - Rye",
            "Smooth and delicious - aged 12 years"
        ));
        ads.add(new Ad(
            2,
            1,
            "2001 Jaguar XKR - convertible",
            "A man's car. Silver and sleek. Channel your inner James Bond!"
        ));
        ads.add(new Ad(
            3,
            2,
            "Junior Java Developer Position",
            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
        ));
        ads.add(new Ad(
            4,
            2,
            "JavaScript Developer needed",
            "Must have strong Java skills, CSS, "
        ));
        return ads;
    }
}
