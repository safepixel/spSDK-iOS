## Installation 

spSDK is available currently through cocoaPods for iOS .

` Pod 'spSDK' `

## Usage

spSDK allows you to create user Public / Private keys and store them in Keychain without any hassle, just provide a unique ID for you user and the SDK will use to generate and securely store keys in user's private KeyChain.

### Initialize 

Add spSDK JSON file to your app bundle directory, you can download it by going into My Apps in the dashboard and download configurations. sdk.safepixel.app/my-apps Then run
` spSDK.config() `
that will configure the SDK and deal with all license and stuff . 

### Generate Keys 

#### Public & Private Key generation 

` spSDK.generate(userID:String,saveInKeyChain:Bool,force:Create) { publicKey in  } ` 

` UserID :Unqiue ID for your user could be userID or email or phone number` 

` saveInKeyChain: if true the keys generated will be saved in the keychain allows the to be synced across all user devices (so if your app runs in many devices you generate once and use in all user devices) and securely stored` 

` forceCreate: by default the SDK will not recreate keys if found on KeyChain , when this is truce it'll override previous keys and replace them with new ones `

This function has a callback with the user Public Key, this key should be stored along with user information on your server/backend service. 
The user's Private Key is stored on the user's keychain securely. 

To get a generated user key at any time 

` getUserKey(userID:String)`

### Encryption and Decryption

spSDK uses top standard in encryption like RSA and AES, the encryption process works by sending `Data` for encryption, that can be anything Audio, Image or Text; Virtually anything that can be converted to `Data` and a Recipient Public Key, this allows the message to be decrypted only by the owner of the public key. 

`  spSDK.encrpyt(data:Data,recepientPublicKey:String){ encryptedData , error in }`

Encrypted data can be stored or sent securely in any way you prefer. 

To decrypt data you'll need to pass in the userId (recipient) for which the data was encrypted using his public key.

` spSDK.decrypt(data:Data,userId:String){ decryptedData,error in } `

