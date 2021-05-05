curl 'https://smarthealth.cards'  | grep -Po 'id="\K(.*?)(?=")' | awk  '{print "{\"page\": \"\", \"id\": \""  $0  "\"}, "}' >> remaps.json
curl 'https://smarthealth.cards/credential-modeling/'  | grep -Po 'id="\K(.*?)(?=")' | awk  '{print "{\"page\": \"credential-modeling\", \"id\": \""  $0  "\"}, "}' >> remaps.json
curl 'https://smarthealth.cards/vocabulary/'  | grep -Po 'id="\K(.*?)(?=")' | awk  '{print "{\"page\": \"vocabulary\", \"id\": \""  $0  "\"}, "}' >> remaps.json
curl 'https://smarthealth.cards/examples/'  | grep -Po 'id="\K(.*?)(?=")' | awk  '{print "{\"page\": \"examples\", \"id\": \""  $0  "\"}, "}' >> remaps.json
curl 'https://smarthealth.cards/changelog/'  | grep -Po 'id="\K(.*?)(?=")' | awk  '{print "{\"page\": \"changelog\", \"id\": \""  $0  "\"}, "}' >> remaps.json
