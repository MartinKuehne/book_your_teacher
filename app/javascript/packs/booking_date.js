import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

const initFlatpickr = () => {
  const element = document.getElementById('booking_start_time');
  flatpickr(element, {
    enableTime: true,
    minTime: "08:00"
  });
  const elementTwo = document.getElementById('booking_end_time');
  flatpickr(elementTwo, {
    enableTime: true,
    noCalendar: true,
    maxTime: "22:30"
  });
};

export { initFlatpickr };
