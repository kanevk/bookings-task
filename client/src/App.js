import './App.css';
import { gql, useLazyQuery, useQuery } from '@apollo/client';

const GET_SPACES_QUERY = gql`
  query GetSpaces {
    spaces {
      id
      name
    }
  }
`

const GET_BOOKINGS_QUERY = gql`
  query GetBookings($spaceId: ID!) {
    bookings(spaceId: $spaceId) {
      description
      startDate
      endDate
    }
  }
`

const App = () => {
  const handleSpaceSelection = (e) => {
    const spaceId = e.target.value;
    fetchBookings({ variables: { spaceId }});
  }

  const { data: spacesData, loading } = useQuery(GET_SPACES_QUERY);
  const [fetchBookings, { data: bookingsData }] = useLazyQuery(GET_BOOKINGS_QUERY);

  if (loading) {
    return <div>Loading...</div>
  }

  return (
    <div className="App">
      <div>
        <h2>Bookings search</h2>
        <select onChange={handleSpaceSelection}>
          <option disabled selected value> -- select a space -- </option>
          {spacesData.spaces.map(({id, name}) => <option key={id} value={id}>{name}</option>)}
        </select>
      </div>
      <hr></hr>
      {bookingsData?.bookings && <BookingResults bookings={bookingsData.bookings} />}
    </div>
  );
}

const BookingResults = ({ bookings }) => {
  return (
    <table className="BookingsResults">
      <tr>
        <th>Description</th>
        <th>Start date</th>
        <th>End date</th>
      </tr>
      {
        bookings.map(({ description, startDate, endDate }) => (
          <tr>
            <td>{description}</td>
            <td>{startDate}</td>
            <td>{endDate}</td>
          </tr>
        ))
      }
    </table>
  )
}

export default App;
