/**
 * modern-ui.js
 * Handles scroll animations, skill bars, and UI enhancements
 * for the Sayan Metya Portfolio
 */

(function () {
  'use strict';

  /* ─── Scroll-reveal for .animate-up elements ─── */
  function initScrollReveal() {
    var elements = document.querySelectorAll('.animate-up');
    if (!elements.length) return;

    var observer = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          // Trigger skill bars when their parent becomes visible
          var fills = entry.target.querySelectorAll('.skill-fill[data-width]');
          fills.forEach(function (fill) {
            setTimeout(function () {
              fill.style.width = fill.getAttribute('data-width') + '%';
            }, 200);
          });
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.15 });

    elements.forEach(function (el) { observer.observe(el); });
  }

  /* ─── Skill bars that are NOT inside .animate-up ─── */
  function initSkillBars() {
    var fills = document.querySelectorAll('.skill-fill[data-width]');
    if (!fills.length) return;

    var observer = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          var fill = entry.target;
          setTimeout(function () {
            fill.style.width = fill.getAttribute('data-width') + '%';
          }, 300);
          observer.unobserve(fill);
        }
      });
    }, { threshold: 0.5 });

    fills.forEach(function (fill) { observer.observe(fill); });
  }

  /* ─── Smooth active nav highlight ─── */
  function highlightActiveNav() {
    var path = window.location.pathname;
    var links = document.querySelectorAll('.menu_nav .nav-link');
    links.forEach(function (link) {
      var href = link.getAttribute('href') || '';
      if (href && path.indexOf(href.split('/').pop()) !== -1) {
        link.parentElement.classList.add('active');
      }
    });
  }

  /* ─── Typewriter effect for the h3 greeting ─── */
  function initTypewriter() {
    var el = document.querySelector('.banner_content h3');
    if (!el) return;
    var text = el.textContent;
    el.textContent = '';
    el.style.opacity = '1';
    var i = 0;
    var timer = setInterval(function () {
      if (i < text.length) {
        el.textContent += text[i++];
      } else {
        clearInterval(timer);
      }
    }, 60);
  }

  /* ─── Particle / orb follow mouse subtly ─── */
  function initMouseGlow() {
    var glow = document.createElement('div');
    glow.style.cssText = [
      'position:fixed', 'width:300px', 'height:300px', 'border-radius:50%',
      'background:radial-gradient(circle, rgba(124,58,237,0.06) 0%, transparent 70%)',
      'pointer-events:none', 'z-index:0', 'transition:transform 0.15s ease',
      'transform:translate(-50%,-50%)', 'top:0', 'left:0'
    ].join(';');
    document.body.appendChild(glow);

    document.addEventListener('mousemove', function (e) {
      glow.style.left = e.clientX + 'px';
      glow.style.top  = e.clientY + 'px';
    });
  }

  /* ─── Stats counter animation ─── */
  function animateCounters() {
    var counters = document.querySelectorAll('.stat-num');
    if (!counters.length) return;

    var observer = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (!entry.isIntersecting) return;
        var el = entry.target;
        
        // Skip animation for fractions or ratios like "24/7" to prevent layout issues
        if (el.textContent.indexOf('/') !== -1) {
          observer.unobserve(el);
          return;
        }

        var raw = el.textContent.replace(/[^0-9]/g, '');
        var suffix = el.textContent.replace(/[0-9]/g, '');
        if (!raw) return;
        var target = parseInt(raw, 10);
        var start = 0;
        var duration = 1500;
        var step = Math.ceil(target / (duration / 16));
        var timer = setInterval(function () {
          start += step;
          if (start >= target) { start = target; clearInterval(timer); }
          el.textContent = start + suffix;
        }, 16);
        observer.unobserve(el);
      });
    }, { threshold: 0.5 });

    counters.forEach(function (c) { observer.observe(c); });
  }

  /* ─── Feature card hover tilt effect ─── */
  function initCardTilt() {
    var cards = document.querySelectorAll('.feature_item, .stat-card');
    cards.forEach(function (card) {
      card.addEventListener('mousemove', function (e) {
        var rect = card.getBoundingClientRect();
        var x = e.clientX - rect.left;
        var y = e.clientY - rect.top;
        var cx = rect.width / 2;
        var cy = rect.height / 2;
        var rotateX = ((y - cy) / cy) * -6;
        var rotateY = ((x - cx) / cx) * 6;
        card.style.transform = 'translateY(-10px) perspective(600px) rotateX(' + rotateX + 'deg) rotateY(' + rotateY + 'deg)';
      });
      card.addEventListener('mouseleave', function () {
        card.style.transform = '';
      });
    });
  }

  /* ─── Init all on DOM ready ─── */
  document.addEventListener('DOMContentLoaded', function () {
    initScrollReveal();
    initSkillBars();
    highlightActiveNav();
    initTypewriter();
    initMouseGlow();
    animateCounters();
    initCardTilt();
  });

})();
