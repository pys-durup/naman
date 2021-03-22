$("#calendarDateIn").mouseover(function() {
    $("#calendarIconIn").css('backgroundColor', '#E6E6E6');
});

$("#calendarDateIn").mouseout(function() {
    $("#calendarIconIn").css('backgroundColor', 'white');
});

$("#calendarDateOut").mouseover(function() {
    $("#calendarIconOut").css('backgroundColor', '#E6E6E6');
});

$("#calendarDateOut").mouseout(function() {
    $("#calendarIconOut").css('backgroundColor', 'white');
});

let calendarDateIn = document.getElementById("calendarDateIn");
let calendarDateOut = document.getElementById("calendarDateOut");
let calendar = document.getElementById("calendar");
let checkDate = document.getElementById("checkDate");
let active = $(".selectable");
let hover = $(".hover");
let dateIn = document.getElementById("dateIn");
let dateOut = document.getElementById("dateOut");

calendarDateIn.onclick = function makeCalendar() {
    calendar.style.display="block";
}

calendarDateOut.onclick = function makeCalendar() {
    calendar.style.display="block";
}

var month = [
    "1월",
    "2월",
    "3월",
    "4월",
    "5월",
    "6월",
    "7월",
    "8월",
    "9월",
    "10월",
    "11월",
    "12월"
];
var weekday = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
];
var weekdayShort = [
    "sun",
    "mon",
    "tue",
    "wed",
    "thu",
    "fri",
    "sat"
];
var monthDirection = 0;

function getNextMonth() {
    monthDirection++;
    var current;
    var now = new Date();
    if (now.getMonth() == 11) {
        current = new Date(now.getFullYear() + monthDirection, 0, 1);
    } else {
        current = new Date(now.getFullYear(), now.getMonth() + monthDirection, 1);
    }
    initCalender(getMonth(current));
}

function getPrevMonth() {
    monthDirection--;
    var current;
    var now = new Date();
    if (now.getMonth() == 11) {
        current = new Date(now.getFullYear() + monthDirection, 0, 1);
    } else {
        current = new Date(now.getFullYear(), now.getMonth() + monthDirection, 1);
    }
    initCalender(getMonth(current));
}
Date.prototype.isSameDateAs = function (pDate) {
    return (
        this.getFullYear() === pDate.getFullYear() &&
        this.getMonth() === pDate.getMonth() &&
        this.getDate() === pDate.getDate()
    );
};

function getMonth(currentDay) {
    var now = new Date();
    var currentMonth = month[currentDay.getMonth()];
    var monthArr = [];
    for (i = 1 - currentDay.getDate(); i < 31; i++) {
        var tomorrow = new Date(currentDay);
        tomorrow.setDate(currentDay.getDate() + i);
        if (currentMonth !== month[tomorrow.getMonth()]) {
        break;
        } else {
        monthArr.push({
        date: {
        weekday: weekday[tomorrow.getDay()],
        weekday_short: weekdayShort[tomorrow.getDay()],
        day: tomorrow.getDate(),
        month: month[tomorrow.getMonth()],
        year: tomorrow.getFullYear(),
        current_day: now.isSameDateAs(tomorrow) ? true : false,
        date_info: tomorrow
        }
        });
        }
    }
    return monthArr;
}

function clearCalender() {
    $("table tbody tr").each(function () {
        $(this).find("td").removeClass("active selectable currentDay between hover").html("");
    });
    $("td").each(function () {
        $(this).unbind('mouseenter').unbind('mouseleave');
    });
    $("td").each(function () {
        $(this).unbind('click');
    });
    clickCounter = 0;
}

function initCalender(monthData) {
    var row = 0;
    var classToAdd = "";
    var currentDay = "";
    var today = new Date();

    clearCalender();
    $.each(monthData,
        function (i, value) {
        var weekday = value.date.weekday_short;
        var day = value.date.day;
        var column = 0;
        var index = i + 1;

        $(".sideb .header .month").html(value.date.month);
        $(".sideb .header .year").html(value.date.year);
        if (value.date.current_day) {
        currentDay = "currentDay";
        classToAdd = "selectable";
        $(".right-wrapper .header span").html(value.date.weekday);
        $(".right-wrapper .day").html(value.date.day);
        $(".right-wrapper .month").html(value.date.month);
        }
        if (today.getTime() < value.date.date_info.getTime()) {
        classToAdd = "selectable";

        }
        $("tr.weedays th").each(function () {
        var row = $(this);
        if (row.data("weekday") === weekday) {
        column = row.data("column");
        return;
        }
        });
        $($($($("tr.days").get(row)).find("td").get(column)).addClass(classToAdd + " " + currentDay).html(day));
        currentDay = "";
        if (column == 6) {
        row++;
        }
        });
    $("td.selectable").click(function () {
        dateClickHandler($(this));
    });
}
initCalender(getMonth(new Date()));

var clickCounter = 0;
$(".fa-angle-double-right").click(function () {
    $(".right-wrapper").toggleClass("is-active");
    $(this).toggleClass("is-active");
});

function dateClickHandler(elem) {

    var day1 = parseInt($(elem).html());
    if (clickCounter === 0) {
        $("td.selectable").each(function () {
        $(this).removeClass("active between hover");
        });
    }
    clickCounter++;
    if (clickCounter === 2) {
        $("td.selectable").each(function () {
        $(this).unbind('mouseenter').unbind('mouseleave');
        });
        clickCounter = 0;
        return;
    }
    $(elem).toggleClass("active");
    $("td.selectable").hover(function () {

        var day2 = parseInt($(this).html());
        $(this).addClass("hover");
        $("td.selectable").each(function () {
        $(this).removeClass("between");

        });
        if (day1 > day2 + 1) {
        $("td.selectable").each(function () {
        var dayBetween = parseInt($(this).html());
        if (dayBetween > day2 && dayBetween < day1) {
        $(this).addClass("between");
        }
        });
        } else if (day1 < day2 + 1) {
        $("td.selectable").each(function () {
        var dayBetween = parseInt($(this).html());
        if (dayBetween > day1 && dayBetween < day2) {
        $(this).addClass("between");
        }
        });
        }
    }, function () {
        $(this).removeClass("hover");
    });
}
$(".fa-angle-left").click(function () {
    getPrevMonth();
    $(".main").addClass("is-rotated-left");
    setTimeout(function () {
        $(".main").removeClass("is-rotated-left");
    }, 195);
});

$(".fa-angle-right").click(function () {
    getNextMonth();
    $(".main").addClass("is-rotated-right");
    setTimeout(function () {
        $(".main").removeClass("is-rotated-right");
    }, 195);
});


let selectyear = document.getElementsByClassName("year")[0].textContent;
let selectmonth = document.getElementsByClassName("month")[0].textContent;
let selectdayin = document.getElementsByClassName("active");
let selectdayout = document.getElementsByClassName("hover");
let selectdayofweekin = document.getElementById("dayofweekIn");
let selectdayofweekout = document.getElementById("dayofweekOut");
let dayofweeksame = document.getElementsByClassName("calendardayofweek");
let nextmonth = document.getElementById("next");
let previousmonth = document.getElementById("previous");


nextmonth.onclick = function selectmonthAdd() {

    intmonth = parseInt(selectmonth.substr(0,1))
    intmonth += 1;
    selectmonth = intmonth + "월";
    console.log(selectmonth);

}

previousmonth.onclick = function selectmonthAdd() {

    intmonth = parseInt(selectmonth.substr(0,1))
    intmonth -= 1;
    selectmonth = intmonth + "월";
    console.log(selectmonth);

}


checkDate.onclick = function disappearCalendar() {
    dateIn.innerHTML = selectyear + "년" + ' ' + selectmonth + ' ' + selectdayin[0].textContent + "일";
    dateOut.innerHTML = selectyear + "년" + ' ' + selectmonth + ' ' + selectdayout[0].textContent + "일";
    for (i=0; i<dayofweeksame.length; i++) {
        if (dayofweeksame[i].getAttribute("data-column") == selectdayin[0].getAttribute("data-column")) {
            selectdayofweekin.innerHTML = dayofweeksame[i].textContent + "요일";
        }
    }
    for (i=0; i<dayofweeksame.length; i++) {
        if (dayofweeksame[i].getAttribute("data-column") == selectdayout[0].getAttribute("data-column")) {
            selectdayofweekout.innerHTML = dayofweeksame[i].textContent + "요일";
        }
    }
    calendar.style.display="none";
}

