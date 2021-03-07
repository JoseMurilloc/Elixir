import styled, { keyframes } from 'styled-components'

import phoenixBackground from '../../assets/phoenixBackground.jpg'
const animationForm = keyframes`
  from {
    opacity: 0;
    transform: translateX(-30px)
  }
  to {
    opacity: 1;
    transform: translateX(0)
  }
`

export const Container = styled.div`
  width: 100vw;
  height: 100vh;

  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-direction: row;
`
export const Background = styled.div`
  width: 50%;
  height: 100%;
  background-image: url(${phoenixBackground});
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;

  button {
    width: 28%;
    height: 10%;
    background: rgba(226, 226, 226, 0.5);
    border-radius: 30px;
    border: 0;

    font-size: 14px;
    line-height: 16px;
    text-align: center;
    letter-spacing: 0.015em;

    color: #ffffff;
  }
`

export const ContainerLogin = styled.div`
  width: 50%;
  height: 100%;

  display: flex;
  justify-content: center;
  align-items: center;

  form {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;

    animation: ${animationForm} 1s;

    h1 {
      margin-bottom: 8%;
    }

    input {
      width: 316px;
      height: 45px;
      padding: 0 5px;

      background: #e8e8e8;
      border: 1px solid #c41292;
      border-radius: 5px;
    }

    input + input {
      margin-top: 37px;
    }

    button {
      width: 316px;
      height: 45px;
      background: linear-gradient(90deg, #dd203e, #c41292);

      opacity: 0.8;
      border-radius: 5px;
      border: 0;

      color: white;
      margin-top: 52px;
    }
  }
`
