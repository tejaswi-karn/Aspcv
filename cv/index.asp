<!DOCTYPE html>
<html lang="en">


<head>
    <title>Karn Tejasswi</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    
    <div id="page-wrap">


        <div id="contact-info" class="vcard">
            <img src="images/tej.png" alt="Photo" id="pic" />
             <!-- Microformats! -->
            <h1>Tejaswi karn</h1>

            <p>
                Phone: <span class="tel"><% Response.Write("9868132399")
                %></span><br />
                Email: <a class="email" href="mailto:tejaswi@acd.edu.np"><% Response.Write("tejaswi@acd.edu.np") %></a>
            </p>
        </div>

        <div id="objective">
            <p>
                <%
                
                Dim fs, fobj
                set fs = CreateObject("Scripting.FileSystemObject")
                set fobj = fs.OpenTextFile("E:\netcentric lab\cv\About.txt",1)
                Response.write(fobj.ReadAll)
                fobj.Close
            
                 %>
            </p>
        </div>

        <div class="clear"></div>

        <dl>
            <dd class="clear"></dd>
            <% 
                Dim fobj1
                set fobj1 = fs.OpenTextFile("E:\netcentric lab\cv\Education.txt",1)
                Response.write(fobj1.ReadAll)
                fobj1.Close
             %>
            

            <dd class="clear"></dd>

            <%
                Dim fobj2
                set fobj2 = fs.OpenTextFile("E:\netcentric lab\cv\Skill.txt",1)
                Response.write(fobj2.ReadAll)
                fobj2.Close
            %>

            <dd class="clear"></dd>
            <%
                Dim fobj3
                set fobj3 = fs.OpenTextFile("E:\netcentric lab\cv\Experience.txt",1)
                Response.write(fobj3.ReadAll)
                fobj3.Close
            %>
            
            <dd class="clear"></dd>

            <dt>Hobbies</dt>
            <dd><%
                Dim fobj4
                set fobj4 = fs.OpenTextFile("E:\netcentric lab\cv\Hobby.txt",1)
                Response.Write(fobj4.ReadAll)
                fobj4.Close
                %></dd>

            <dd class="clear"></dd>

            <dt>online/offline courses</dt>
            <%
                Dim fobj5
                Dim arrLink(10)
                Dim i
                i = 0
                set fobj5 = fs.OpenTextFile("E:\netcentric lab\cv\Links.txt",1)
                Response.Write(fobj5.ReadAll)
                fobj5.Close
            %>
         



            <dd class="clear"></dd>

            <dt>References</dt>
            <dd>Available on request</dd>

            <dd class="clear"></dd>
        </dl>

        <div class="clear"></div>

    </div>

</body>

</html>