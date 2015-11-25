$(document).on( 'ready page:load', function(event) {
    $("#games_select").change( function(event) {
        var deckId = $(this).val();
        $.ajax( {
            url:     "/decks/" + deckId + ".json",
            success: function(data, status, xhr) {
                $("#deck_wins").val(data.deck_name);
            }
        } );
    } );
} );
