var bgColor;      //±£´æ±»¾°É«
function MouseMoveIn(res)
{
  if(!res.contains(event.fromElement))
  {
    bgColor = res.style.backgroundColor;
    //res.style.cursor="hand";
    res.style.backgroundColor="#BDDFFF";
  }
}

function MouseMoveOut(res)
{
  if(!res.contains(event.toElement))
  {
    //res.style.cursor="Default";
    res.style.backgroundColor=bgColor;
  }
}