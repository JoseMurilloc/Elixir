import React from 'react'
import Head from 'next/head'
import { Container, ContainerLogin, Background } from '../styles/pages/Home'
import api from '../services/api'
import { useRouter } from 'next/router'
import Link from 'next/link'
import { ToastContainer, toast } from 'react-toastify'

const Register: React.FC = () => {
  const success = () => toast.success('Success register and login!')
  const error = () => toast.error('Error register!')

  const router = useRouter()

  const [email, setEmail] = React.useState('')
  const [password, setPassword] = React.useState('')
  const [passwordConfirmation, setPasswordConfirmation] = React.useState('')

  const handleSubmitRegister = React.useCallback(
    async event => {
      event.preventDefault()
      try {
        const user = {
          email,
          password,
          password_confirmation: passwordConfirmation
        }

        console.log(user)

        const response = await api.post('/sign_up', { user })

        localStorage.setItem('JWT:Phoenix', JSON.stringify(response.data))

        success()

        router.push('/')
      } catch (err) {
        error()
      } finally {
        setEmail('')
        setPassword('')
        setPasswordConfirmation('')
      }
    },
    [password, email, passwordConfirmation]
  )

  return (
    <>
      <Head>
        <title>Register page</title>
      </Head>

      {/* Toast notify success login */}
      <ToastContainer />

      <Container>
        <ContainerLogin>
          <form>
            <h1>Register</h1>

            <input
              type="email"
              name="email"
              placeholder="Email"
              value={email}
              onChange={e => setEmail(e.target.value)}
            />

            <input
              type="password"
              name="password"
              placeholder="Password"
              value={password}
              onChange={e => setPassword(e.target.value)}
            />

            <input
              type="password"
              name="password_confirmation"
              placeholder="Password Confirmation"
              value={passwordConfirmation}
              onChange={e => setPasswordConfirmation(e.target.value)}
            />

            <button type="submit" onClick={handleSubmitRegister}>
              Register
            </button>
          </form>
        </ContainerLogin>
        <Background>
          <Link href="/">
            <button>Login</button>
          </Link>
        </Background>
      </Container>
    </>
  )
}

export default Register
