package main

import (
	"fmt"
	"log"
	"net/http"
)

// type Article struct {
// 	Title   string `json:"title"`
// 	Desc    string `json:"desc"`
// 	Content string `json:"content"`
// }

// type Articles []Article

// func allArticles(w http.ResponseWriter, r *http.Request) {
// 	articles := Articles{
// 		Article{Title: "hala", Desc: "lekker", Content: "homie"},
// 		Article{Title: "Gucci Title", Desc: "lekker homie", Content: "monkey"},
// 		Article{Title: " Title", Desc: " homie", Content: "monkey"},
// 	}
// 	// currentTime := time.Now()
// 	// fmt.Println("\n##########################\n")
// 	// fmt.Println(currentTime.Format("2006-01-02"))

// 	fmt.Println("Endpoint Hit: All Articles Endpoint")
// 	json.NewEncoder(w).Encode(articles)
// }

func homePage(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Welcome to the HomePage!")
}

func handleRequests() {
	http.HandleFunc("/", homePage)
	http.HandleFunc("/results", getresults)
	log.Fatal(http.ListenAndServe(":8081", nil))
}

func main() {
	handleRequests()
}
