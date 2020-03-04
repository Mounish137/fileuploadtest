Feature: file upload end-point

Background:
* url 'http://127.0.0.1:5000/'

Scenario: upload file
    Given path 'file-upload'
    # refer to the second scenario in this file for how to set the upload filename using the 'multipart file' syntax
    And multipart file file = { read:'d:/resume/pic.jpg', filename:'pic.jpg'}
    And multipart field message = 'hello world'
    When method post
    Then status 201
    And match response == {'message' : 'File successfully uploaded'}
