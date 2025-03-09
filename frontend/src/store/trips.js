import { csrfFetch } from "./csrf.js";

const SET_TRIPS = "trips/setTrips";
const ADD_TRIP = "trips/addTrip";
const REMOVE_TRIP = "trips/removeTrip";

const setTrips = (trips) => ({
  type: SET_TRIPS,
  payload: trips,
});

export const addTrip = (trip) => ({
  type: ADD_TRIP,
  payload: trip,
});

export const removeTrip = (tripId) => ({
  type: REMOVE_TRIP,
  payload: tripId,
});

export const fetchTrips = () => async (dispatch) => {
  const response = await csrfFetch(`/api/trips`);
  const data = await response.json();
  dispatch(setTrips(data.trips));
  return response;
};

export const fetchTrip = (tripId) => async (dispatch) => {
  const response = await csrfFetch(`/api/trips/${tripId}`);
  const data = await response.json();
  dispatch(addTrip(data.trip));
  return response;
};

export const createTrip = (tripFormData) => async (dispatch) => {
  const response = await csrfFetch("/api/trips", {
    method: "POST",
    body: JSON.stringify(tripFormData),
  });
  const data = await response.json();

  dispatch(addTrip(data.trip));
  return response;
};

export const updateTrip = (tripFormData) => async (dispatch) => {
  const response = await csrfFetch(`/api/trips/${tripFormData.tripId}`, {
    method: "PATCH",
    body: JSON.stringify(tripFormData),
  });
  const data = await response.json();
  dispatch(addTrip(data.trip));
  return response;
};

export const deleteTrip = (tripId, callback) => async (dispatch) => {
  try {
    const response = await csrfFetch(`/api/trips/${tripId}`, {
      method: "DELETE",
    });
    if (response.ok) {
      dispatch(removeTrip(tripId));
      if (callback) {
        callback();
      }
    } else {
      throw new Error(`Error deleting trip: ${response.statusText}`);
    }
  } catch (error) {
    console.error(error);
  }
};

function tripsReducer(state = {}, action) {
  switch (action.type) {
    case SET_TRIPS:
      return action.payload;
    case ADD_TRIP:
      const trip = action.payload;
      return { ...state, [trip.id]: trip };
    case REMOVE_TRIP:
      const newState = { ...state };
      delete newState[action.payload];
      return newState;
    default:
      return state;
  }
}

export default tripsReducer;
