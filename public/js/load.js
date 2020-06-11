$( document ).ready(function () {
    $(".moreBox").slice(0, 5).show();
    if ($(".blogBox:hidden").length != 0) {
        $("#loadMore").show();
    }
    $("#loadMore").on('click', function (e) {
        e.preventDefault();
        $(".moreBox:hidden").slice(0, 5).slideDown();
        if ($(".moreBox:hidden").length == 0) {
            $("#loadMore");
        }
    });
    $(".moreBo").slice(0, 5).show();
    if ($(".blogBo:hidden").length !=0) {
        $("#loadMore2").show();
    }
    $("#loadMore2").on('click', function (e) {e.preventDefault();
        $(".moreBo:hidden").slice(0, 5).slideDown();
        if ($(".moreBo:hidden").length == 0) {
            $("#loadMore2");
        }
    });
});


