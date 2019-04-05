module SongsHelper

  def artist_select(artist, song)
    if !!artist
      artist.name
    else
      form_for @song do |f|
        f.collection_select :artist_id, Artist.all, :id, :name
      end
    end
  end

end
