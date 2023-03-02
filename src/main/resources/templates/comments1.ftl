<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Guest book</title>
</head>
<body>
<form method="post">
    <br/>
    Name:
    <label>
        <input
                type="text"
                placeholder="Name"
                name="name"
                <#if temporaryName?has_content>
                    value="${temporaryName}"
                </#if>
                maxlength="20"
                size="20"
        />
    </label>
    <#if emptyName>
        <font color="red">Empty name!</font>
    </#if>
    <br/>

    Rating:
    <label>
        <select name="rating" >
            <option <#if temporaryRating=0>selected</#if> value="" disabled hidden>Choose here</option>
            <option <#if temporaryRating=1>selected</#if> value="1">1</option>
            <option <#if temporaryRating=2>selected</#if> value="2">2</option>
            <option <#if temporaryRating=3>selected</#if> value="3">3</option>
            <option <#if temporaryRating=4>selected</#if> value="4">4</option>
            <option <#if temporaryRating=5>selected</#if> value="5">5</option>
        </select>
    </label>
    <#if emptyRating>
        <font color="red">Choose rating!</font>
    </#if>
    <br/>

    Comment:
    <br/>
    <label>
            <textarea
                    name="comment"
                    placeholder="Comment"
                    cols="30"
                    rows="6"><#if temporaryComment?has_content>${temporaryComment}</#if></textarea>
    </label>
    <#if emptyComment>
        <font color="red">Empty comment!</font>
    </#if>
    <br/>
    <input type="submit"/>
</form>
<br/>

<#if comments?has_content>
    <table border="1" cellpadding="5" style="border-collapse: collapse;">
        <tr style="background: #e1f4f7ee;">
            <th width="50" align="left">Name</th>
            <th width="50" align="left">Rating</th>
            <th width="250" align="left">Comment</th>
        </tr>
        <#list comments as id, commentObject>
            <tr>
                <td>${commentObject.name}</td>
                <td>${commentObject.rating}</td>
                <td>${commentObject.comment}</td>
            </tr>
        </#list>
    </table>
<#else>
    No comments yet!
</#if>

</body>
</html>