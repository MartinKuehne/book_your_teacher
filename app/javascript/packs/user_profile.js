const initProfile = () => {
  const button = document.getElementById('click');
  const userInfo = document.querySelector('.user-info');
  button.addEventListener('click', (e) => {
    userInfo.classList.toggle('d-none');
  });
};

export { initProfile };
