//Handle back to top button only if element is valid
    //Var
    let backToTop = document.getElementById("backToTop");
    //Func
    function onScroll() 
    {
    if (
        document.body.scrollTop > 20 ||
        document.documentElement.scrollTop > 20
    ) {
        backToTop.style.display = "block";
    } else {
        backToTop.style.display = "none";
    }
    }

    function goBackToTop() 
    {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }

    //Hooks
    if(backToTop != null)
    {
        window.onscroll = function ()
        {
            onScroll();
        };
        backToTop.addEventListener("click", goBackToTop);
    }

    (function ($) {

        $(".list-toggle").on('click', function() {
            $("#issuers_list").toggleClass("toggled");
            $('.list-toggle').toggle();
        });

    })(jQuery);