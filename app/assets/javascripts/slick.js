$(function() {
    $('.multiple-item').slick({
          infinite: true,
          dots:true,
          slidesToShow: 3,
          slidesToScroll: 1,
          dots: false,
          prevArrow: '<div class="slider-arrow slider-prev"><i class="fas fa-chevron-circle-left"></i></div>',
          nextArrow: '<div class="slider-arrow slider-next"><i class="fas fa-chevron-circle-right"></i></div>',
          responsive: [{
               breakpoint: 767.98,
                    settings: {
                         slidesToShow: 1,
                         slidesToScroll: 1,
               }
          }]
     });
});
