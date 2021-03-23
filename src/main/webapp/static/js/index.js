$(function () {

    // let url = 'homepage.html';
    // $('#right-panel').load(url);
    //

    $(function () {
        $('#hide-button').click(function () {
            $('#left-guide').fadeToggle("fast");
        })
    })

    $("#newOrder-page-link").bind("click",function () {
        $("#page").attr("src","newOrder");
    })

    //
    // $(".link").bind("click",function () {
    //     secondTitleChosen(this);
    // })
})
// function frameChange(clickTitle) {
//     console.log($(clickTitle).val());
//     $("#page").attr("src",$(clickTitle).val());
// }

function secondTitleChosen(secondTitle) {
    $(".link").css("color","black");
    $(secondTitle).css("color","white");
}

function firstTitleChosen(firstTitle) {
    $(firstTitle).addClass("in");
    $(".first-menu").not(".in").removeClass("active");
    $(".first-menu").not(".in").removeClass("titleChosen");
    $(firstTitle).toggleClass("active");
    $(firstTitle).toggleClass("titleChosen");
    $(".second-menu").slideUp();
    $(".active").next().slideDown();
    $(firstTitle).removeClass("in");
}

function hidemenu() {
    document.getElementById('left-panel').style.display = 'blocked';
}