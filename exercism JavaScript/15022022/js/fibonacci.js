var limit = prompt("fff");
var fibo = [0, 1];
var res = 0;
var i = 1;
while (res < limit) {
  //console.log(fibo[i], fibo[i - 1]);
  res = fibo[i] + fibo[i - 1];
 // console.log(res);
 if (res < limit)
  fibo.push(res);
i++;
}

console.log(fibo);
