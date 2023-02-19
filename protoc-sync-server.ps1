protoc --go_out=./sync-server sync_server.v1.proto
Copy ./sync_server.v1.proto ./desktop-app/src-tauri/src
protoc --plugin=protoc-gen-ts_proto=.\site-app\node_modules\.bin\protoc-gen-ts_proto.cmd --ts_proto_opt=esModuleInterop=true --ts_proto_out=./desktop-app/src/types ./sync_server.v1.proto