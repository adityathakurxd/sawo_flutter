
# SAWO x Flutter
Custom Onboarding Screen and User Model to work with SAWO in Flutter.

## What is SAWO?

[SAWO](https://sawolabs.com/) is an authentication solution that can onboard users without any passwords or OTPs, thus making the process hassle-free, quick and secure.

## Screenshots

<table>
        <tr>
          <td>
            <img src="https://user-images.githubusercontent.com/53579386/137616358-8ed6a20e-03b1-4b9e-a9a3-efea2509fc7f.jpeg" alt="Onboarding Screen">
          </td>
          <td>
            <img src="https://user-images.githubusercontent.com/53579386/137616371-3aac049e-2009-46b1-998d-7a2aba04e2a3.jpeg" alt="">
          </td>
          <td>
            <img src="https://user-images.githubusercontent.com/53579386/137616390-9da97991-ed03-4a5a-8d3e-caf641a23bbc.jpeg" alt="">
          </td>
          <td>
            <img src="https://user-images.githubusercontent.com/53579386/137616401-ca818fca-e3e2-4bf5-9802-dff28f6984ce.jpeg" alt="">
          </td>
        </tr>
 </table>
<br>

## How to run?
Read the package documentation here: https://pub.dev/packages/sawo

#### Create API Key

-   Login to sawo  [dev console.](https://dev.sawolabs.com/)
-   Create a new project
    -   Select Hybrid and then select Flutter under that section
    -   Set Project Name
-   Copy your API key & Secret Key from the file which has been downloaded automatically.

#### Replace the 'Your API Key' and 'Your Secret Key' text in
`'package:sawo_flutter/screens/onboarding_screen.dart'`
 with API and Secret key of your own to create the Sawo Instance

#### Run the Project
