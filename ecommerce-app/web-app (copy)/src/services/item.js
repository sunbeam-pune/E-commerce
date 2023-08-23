import axios from 'axios'
import { createUrl, log } from '../utils/utils'

export async function getProductList() {
  const url = createUrl('/product')

  try {
    // get the current user's token from session storage
    const { token } = sessionStorage

    // create a header to send the token
    const header = {
      headers: {
        token,
      },
    }

    // make the api call using the token in the header
    const response = await axios.get(url, header)
    log(response.data)
    return response.data
  } catch (ex) {
    log(ex)
    return null
  }
}
