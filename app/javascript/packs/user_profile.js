const initProfile = () => {
  const button = document.querySelector('.click');
  const userInfo = document.querySelector('.user-info');
  button.addEventListener('click', (e) => {
    userInfo.classList.toggle('d-none');
    button.classList.toggle("fa-chevron-right");
    button.classList.toggle("fa-chevron-down");
  });
};

export { initProfile };
