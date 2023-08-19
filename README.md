# car_wash_ui

Flutter application for car wash which does calls on the backend.

## Openapi code generator

To generate the code from openapi.yaml file that comes from the backend, you need to follow the
steps:

1. Make sure you have installed the openapi generator cli globally using npm. If not, run the
   command:

```shell script
npm install @openapitools/openapi-generator-cli -g 
```

2. Run the command to generate the code:

```shell script
npx @openapitools/openapi-generator-cli generate -i api_clients/openapi.yaml -g dart -o generated_code
```

Flutter
To use a svg as an icon, use:
ColorFiltered(
colorFilter: const ColorFilter.mode(AppColors.blue, BlendMode.srcIn),
child: SvgPicture.asset(
Images.closeIcon,
),
),

Libraries:
dontnv is used to read properties from .env file

On the main.dart, we set up files to use the colors defined there by default and also the font that
is there.

