const fs = require('fs')
const child_process = require('child_process')

const files= fs.readdirSync('./device')
// console.log(files);
const options = {
    cwd: process.cwd(),
    env: process.env,
    stdio: 'inherit',
    encoding: 'utf-8',
  }

files.forEach(i => {
    if(i === '.DS_Store') return
    const name = i.replace( '.framework', '')
    const command = `lipo -create \
    ./simulator/${name}.framework/${name} \
    ./device/${name}.framework/${name} \
    -output ./universal/${name}.framework/${name}`
    console.log("🚀 ~ file: index.js ~ line 13 ~ command", command)
    // const command = `lipo -info ./device/${name}.framework/${name}`

    const result = child_process.exec(command, options, function (e) {
        console.log('e', e);
    })

    
    
      result.stdout.on('data', function (data) {
        console.log(`${data.toString()}`)
      })
    
      result.stderr.on('data', function (data) {
        console.log(`${data.toString()}`)
      })
    
      result.on('exit', function () {
        process.exit()
      })
})
