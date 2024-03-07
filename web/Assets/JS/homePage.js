document.addEventListener("DOMContentLoaded", function () {
    var downButtons = this.documentElement.querySelectorAll(".Qsearch_icon_dow");

    downButtons.forEach(function (iconDown, indexIcon) {
        iconDown.addEventListener("click", function () {
            toggleOptionsContainer(indexIcon);
        });
    });

    function toggleOptionsContainer(indexIcon) {
        var optionContainers = document.querySelectorAll(
                ".Qsearch_Data_List .optionsContainer"
                );

        optionContainers.forEach(function (object, index) {
            if (indexIcon === index) {
                object.classList.toggle("hidden");
            } else {
                object.classList.add("hidden");
            }
        });
    }

    var getAllContainers = document.querySelectorAll(
            ".Quick-Search .optionsContainer"
            );

    getAllContainers.forEach(function (container) {
        container.addEventListener("click", function (event) {
            if (event.target.classList.contains("option")) {
                var optionNumber = container
                        .closest(".QuickSearch-item")
                        .querySelector(".Qsearch-icon span").textContent;

                var optionValue = event.target.textContent;

                nextStep(++optionNumber);

                localStorage.setItem("selectedMovie", optionValue);

                console.log(optionNumber + " : " + optionValue);

                container.classList.add("hidden");

                var movieNameDisplay = container
                        .closest(".QuickSearch-item")
                        .querySelector(".QuickSearch-item .Qsearch-title");

                movieNameDisplay.textContent = optionValue;
            }
        });
    });

    function nextStep(step) {
        var nextStep = document.querySelector(
                `.QuickSearch-item:nth-child(${step})`
                );
        nextStep.style.pointerEvents = "auto";
        nextStep.style.opacity = 1;
    }

    // BODY NAV
    var navItems = document.querySelectorAll(".navigation-body_item");

    navItems.forEach(function (object) {
        object.addEventListener("click", function () {
            changeNav(this);
        });
    });

    function changeNav(selected) {
        navItems.forEach(function (object) {
            if (object === selected) {
                object.classList.add("selected");
            } else {
                object.classList.remove("selected");
            }
        });
    }

    var moreMovies = document.querySelector(".more_movies_span");

    moreMovies.addEventListener("click", function () {
        var showMore = document.querySelector(".main_content-movies-more");
        showMore.classList.toggle("hidden");
        moreMovies.classList.toggle("hidden");
    });
});
