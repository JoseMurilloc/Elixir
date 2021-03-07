import React from 'react'
import Head from 'next/head'
import { Container, ContainerLogin, Background } from '../styles/pages/Home'
import Link from 'next/link'
import api from '../services/api'

import { ToastContainer, toast } from 'react-toastify'

const Home: React.FC = () => {
  const success = () => toast.success('Success login!')
  const error = () => toast.error('Error login!')

  const [email, setEmail] = React.useState('')
  const [password, setPassword] = React.useState('')

  const handleSubmit = React.useCallback(
    async event => {
      event.preventDefault()
      try {
        const response = await api.post('/sign_in', { email, password })

        localStorage.setItem('JWT:Phoenix', JSON.stringify(response.data))

        success()
      } catch (err) {
        error()
      } finally {
        setEmail('')
        setPassword('')
      }
    },
    [password, email]
  )

  return (
    <>
      <Head>
        <title>Login page</title>
      </Head>

      {/* Toast notify success login */}
      <ToastContainer />

      <Container>
        <Background>
          <Link href="/register">
            <button>Register</button>
          </Link>
        </Background>
        <ContainerLogin>
          <form>
            <h1>Login</h1>

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

            <button type="submit" onClick={handleSubmit}>
              Login
            </button>
          </form>
        </ContainerLogin>
      </Container>
    </>
  )
}

export default Home
