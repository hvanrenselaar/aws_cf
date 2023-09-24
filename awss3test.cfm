

<cfscript>
      LOCAL_FILE_NAME = "file3.txt"
        //s3Service = getCloudService(application.awsCred,application.s3Conf)
        s3Object= getCloudService("s3Cred", "s3Conf");

        bucketObj=s3Object.bucket("lerntools","true") ;
        uploadStruct = { 
          "srcFile" : "#ExpandPath('./')#/#LOCAL_FILE_NAME#", 
          "key" : "#LOCAL_FILE_NAME#"
    } 
    try{ 
      uploadResponse=bucketObj.uploadFile(uploadStruct) 
      writeOutput("Object uploaded successfully") 
      writeDump(uploadResponse) 
    } 
    catch (any e){ 
      writeOutput("Could not upload the object") 
      writeDump(e) 
    } 

  downloadStruct = { 
    "destinationFile" : "#ExpandPath('./Uploads/')##LOCAL_FILE_NAME#", 
    "key" : "#LOCAL_FILE_NAME#"
  } 
  try{ 
    downloadResponse=bucketObj.downloadToFile(downloadStruct) 
    writeOutput("Object downloaded successfully") 
    writeDump(downloadResponse) 
  } 
  catch (any e){ 
    writeOutput("Failed to download object") 
    writeDump(e) 
  } 
</cfscript>



