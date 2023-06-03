# car_wash_ui

Flutter application for car wash which does calls on the backend.

## Openapi code generator
To generate the code from openapi.yaml file that comes from the backend, you need to follow the steps: 
1. Make sure you have installed the openapi generator cli globally using npm. If not, run the command:
`   npm install @openapitools/openapi-generator-cli -g 
`
2. Run the command to generate the code:
`   npx @openapitools/openapi-generator-cli generate -i api_clients/openapi.yaml -g dart -o generated_code
`




