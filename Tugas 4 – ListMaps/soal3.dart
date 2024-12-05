void main(List<String> args) {
  dataHandling(input);
}

var input = [
  ['001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['004', 'Bintang Senyaja', 'Martapura', '6/04/1970', 'Berkebun']
];

void dataHandling(List<List<String>> data) {
  for (var item in data) {
    print('Nomor ID: ${item[0]}');
    print('Nama Lengkap: ${item[1]}');
    print('TTL: ${item[2]} ${item[3]}');
    print('Hobby: ${item[4]}');
    print('');
  }
}
