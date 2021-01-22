import models.Album;
import models.Authors;
import models.Quotes;

import java.util.Date;

public class BeanTest {
    public static void main(String[] args) {
        Album journey = new Album();
        Authors Adams = new Authors();
        Authors Twain = new Authors();
        Authors Vonnegut = new Authors();
        Quotes Douglas = new Quotes();
        Quotes Mark= new Quotes();
        Quotes Kurt = new Quotes();

        journey.setId(37);
        journey.setArtist("Journey");
        journey.setName("Greatest Hits");
        journey.setBirthDate(new Date());
        journey.setSales(1000000);
        journey.setGenre("pop");
        System.out.println(journey.getArtist() + " put out their " + journey.getName() + " album and sold " + journey.getSales() + " copies" );

        Adams.setFirstName("Douglas");
        Adams.setLastName("Adams");
        Twain.setFirstName("Mark");
        Twain.setLastName("Twain");
        Vonnegut.setFirstName("Kurt");
        Vonnegut.setLastName("Vonnegut");

        Douglas.setContent("Don't Panic");
        Mark.setContent("Clothes make the man. Naked people have little or no influence on society");
        Kurt.setContent("The universe is a big place, perhaps the biggest");


    }

}


