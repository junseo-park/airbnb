dates=(
	2016-04-03
	2016-05-02
	2016-06-02
	2016-07-02
	2016-08-02
	2016-09-02
	2016-10-01
	2016-11-02
	2016-12-03
	2017-01-01
	2017-02-02
	2017-03-02
	2017-04-02
	2017-05-02
	2017-06-02
	2017-07-02
	2017-08-02
	2017-09-02
	2017-10-02
	2017-11-01
	2017-12-02
	2018-01-10
	2018-02-02
	2018-03-04
	2018-04-06
	2018-05-09
)

mkdir -p data

for date in "${dates[@]}"; do
	curl -o data/listings_${date}.csv.gz http://data.insideairbnb.com/united-states/ca/san-francisco/${date}/data/listings.csv.gz
	curl -o data/calendar_${date}.csv.gz http://data.insideairbnb.com/united-states/ca/san-francisco/${date}/data/calendar.csv.gz
	curl -o data/reviews_${date}.csv.gz http://data.insideairbnb.com/united-states/ca/san-francisco/${date}/data/reviews.csv.gz
done
