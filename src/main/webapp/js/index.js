/**
 * 
 */
let currentSlide = 0;
        const totalSlides = document.querySelectorAll('.slide').length;

        function moveSlide(direction) {
            const slides = document.querySelector('.slides');
            currentSlide = (currentSlide + direction + totalSlides) % totalSlides;
            slides.style.transform = `translateX(${-currentSlide * 100}%)`;
        }

        // Auto slide function
        setInterval(() => {
            moveSlide(1);
        }, 2000); 