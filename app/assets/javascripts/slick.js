$(function() {
    $('.multiple-item').slick({
          infinite: true,
          dots:true,
          slidesToShow: 3,
          slidesToScroll: 1,
          dots: false,
          prevArrow: '<div class="slider-arrow slider-prev fa fa-angle-left"></div>',
          nextArrow: '<div class="slider-arrow slider-next fa fa-angle-right"></div>',
          responsive: [{
               breakpoint: 767.98,
                    settings: {
                         slidesToShow: 1,
                         slidesToScroll: 1,
               }
          }]
     });
});
