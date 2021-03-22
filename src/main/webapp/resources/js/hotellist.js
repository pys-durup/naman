//가격 올리기
let hotelPrice = document.getElementsByClassName('hotelprice');

let priceArray = [];  

for (var i=0; i<hotelPrice.length; i++) {

    let hotelPriceNoneZero = hotelPrice[i].textContent.split('원');
    let hotelPriceCommaDel = parseInt(hotelPriceNoneZero) + "000";
    priceArray.push(parseInt(hotelPriceCommaDel));

}

var priceMin = Math.min.apply(null, priceArray);
var priceMax = Math.max.apply(null, priceArray);

$("#grade-slider").slider();

$("#price-slider").slider({
    id: "price-slider-color",
    min: priceMin,
    max: priceMax,
    value: 0,
    step: 10000,
    range: true
});

let grade = document.getElementById("grade");
let price = document.getElementById("price");
let gradeRange = document.getElementById("grade-slider");
let priceRange = document.getElementById("price-slider");
let reset = document.getElementById("reset");
let hotelGrade = document.getElementsByClassName('hotelgrade');

//평점 값 대입
gradeRange.onchange = function() {
    gradeValue();
    gradeUp();
    gradeDown();
};

var gradeValue = function() {

    grade.innerHTML = gradeRange.getAttribute('value') + " 점 이상";

};

//가격 값 대입
priceRange.onchange = function() {
    priceValue();
    priceMaxUp();
    priceMaxDown();
    priceMinUp();
    priceMinDown();
}

price.innerHTML = priceMin.toLocaleString('ko-KR') + " 원 ~ " + priceMax.toLocaleString('ko-KR') + " 원";

var priceValue = function() {

    priceMinValue = parseInt(priceRange.getAttribute('value').split(',')[0]).toLocaleString('ko-KR');
    priceMaxValue = parseInt(priceRange.getAttribute('value').split(',')[1]).toLocaleString('ko-KR');
    price.innerHTML = priceMinValue + " 원 ~ " + priceMaxValue + " 원";

}


//평점 필터
var gradeUp = function() {

    for (var i=0; i<hotelGrade.length; i++)

        if (parseFloat(gradeRange.getAttribute('value')) > parseFloat(hotelGrade[i].textContent)){
            hotelGrade[i].parentNode.parentNode.style.display = 'none';
        }

}

var gradeDown = function() {

    for (var i=0; i<hotelGrade.length; i++)

        if (parseFloat(gradeRange.getAttribute('value')) < parseFloat(hotelGrade[i].textContent)){
            hotelGrade[i].parentNode.parentNode.style.display = 'block';
        }

}

//가격 필터
var priceMinUp = function() {

    for (var i=0; i<hotelPrice.length; i++) {
    	

        if (parseInt(priceRange.getAttribute('value').split(',')[0]) > parseInt(parseInt(hotelPrice[i].textContent) + "000")) {
            hotelPrice[i].parentNode.parentNode.style.display = 'none';
        }

    }

}

var priceMinDown = function() {

    for (var i=0; i<hotelPrice.length; i++) {

        if (parseInt(priceRange.getAttribute('value').split(',')[0]) < parseInt(parseInt(hotelPrice[i].textContent) + "000")) {
            hotelPrice[i].parentNode.parentNode.style.display = 'block';
        }

    }

}


var priceMaxUp = function() {

    for (var i=0; i<hotelPrice.length; i++) {
    	

        if (parseInt(priceRange.getAttribute('value').split(',')[1]) < parseInt(parseInt(hotelPrice[i].textContent) + "000")) {
            hotelPrice[i].parentNode.parentNode.style.display = 'none';
        }

    }

}

var priceMaxDown = function() {

    for (var i=0; i<hotelPrice.length; i++) {

        if (parseInt(priceRange.getAttribute('value').split(',')[1]) > parseInt(parseInt(hotelPrice[i].textContent) + "000")) {
            hotelPrice[i].parentNode.parentNode.style.display = 'block';
        }

    }

}
















