import models.Album;

import java.util.Date;

public class AlbumTest {
    public static void main(String[] args) {
        Album journey = new Album();

        journey.setId(37);
        journey.setArtist("Journey");
        journey.setName("Greatest Hits");
        journey.setBirthDate(new Date());
        journey.setSales(1000000);
        journey.setGenre("pop");
        System.out.println(journey.getArtist() + " put out their " + journey.getName() + " album and sold " + journey.getSales() + " copies" );
    }

}
