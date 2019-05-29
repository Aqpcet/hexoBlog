const ap = new APlayer({
    container: document.getElementById('aplayer'),
    autoplay: false,
	listFolded: true,
	theme: '#b7daff',
	loop: 'all',
    audio: [
      {
        name: "G弦上的咏叹调",
        artist: '巴赫',
        url: 'https://music.163.com/song/media/outer/url?id=457775423.mp3',
        cover: 'https://p4.music.126.net/zGckGCLjW9wVSpOkQXGFuw==/7879100324766264.jpg?param=200y200',
      },
	  {
        name: "世界が终わるまでは…",
        artist: 'WANDS',
        url: 'https://music.163.com/song/media/outer/url?id=4990424.mp3',
        cover: 'https://p1.music.126.net/UtHgWKjp6mANCa6C2IR7nw==/19045740416543667.jpg?param=90y90',
      },
     
    ]
});