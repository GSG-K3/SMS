RTCPeerConnection.query(sql, (err, rows, fields) => {
  if (err) console.log(err);
  else console.log(rows);
  response.send(rows);
});
