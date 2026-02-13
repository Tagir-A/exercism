// Package weather should do weather forecasting.
package weather

// CurrentCondition represents something.
var CurrentCondition string

// CurrentLocation represents soemthing else.
var CurrentLocation string

// Forecast returns a string value explaining weather conditions in a location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
