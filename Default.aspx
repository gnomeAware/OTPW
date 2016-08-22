<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OTPW._Default" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Grid" Assembly="obout_Grid_NET" %>
<%@ Register TagPrefix="obout" Namespace="Obout.Interface" Assembly="obout_Interface" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function OxygenOnClick(rowIndex, cellIndex) {
            var textArea = document.createElement("textarea");

            //
            // *** This styling is an extra step which is likely not required. ***
            //
            // Why is it here? To ensure:
            // 1. the element is able to have focus and selection.
            // 2. if element was to flash render it has minimal visual impact.
            // 3. less flakyness with selection and copying which **might** occur if
            //    the textarea element is not visible.
            //
            // The likelihood is the element won't even render, not even a flash,
            // so some of these are just precautions. However in IE the element
            // is visible whilst the popup box asking the user for permission for
            // the web page to copy to the clipboard.
            //

            // Place in top-left corner of screen regardless of scroll position.
            textArea.style.position = 'fixed';
            textArea.style.top = 0;
            textArea.style.left = 0;

            // Ensure it has a small width and height. Setting to 1px / 1em
            // doesn't work as this gives a negative w/h on some browsers.
            textArea.style.width = '2em';
            textArea.style.height = '2em';

            // We don't need padding, reducing the size if it does flash render.
            textArea.style.padding = 0;

            // Clean up any borders.
            textArea.style.border = 'none';
            textArea.style.outline = 'none';
            textArea.style.boxShadow = 'none';

            // Avoid flash of white box if rendered for any reason.
            textArea.style.background = 'transparent';



            textArea.value = "SF" + gridOxygen.Rows[rowIndex].Cells[1].Value;

            document.body.appendChild(textArea);

            textArea.select();

            document.execCommand("copy");

            document.body.removeChild(textArea);

            lblPW.innerText = "Copied: '" + gridOxygen.Rows[rowIndex].Cells[1].Value + "' to the clipboard";
        }
        function NitrogenOnClick(rowIndex, cellIndex) {
            var textArea = document.createElement("textarea");

            //
            // *** This styling is an extra step which is likely not required. ***
            //
            // Why is it here? To ensure:
            // 1. the element is able to have focus and selection.
            // 2. if element was to flash render it has minimal visual impact.
            // 3. less flakyness with selection and copying which **might** occur if
            //    the textarea element is not visible.
            //
            // The likelihood is the element won't even render, not even a flash,
            // so some of these are just precautions. However in IE the element
            // is visible whilst the popup box asking the user for permission for
            // the web page to copy to the clipboard.
            //

            // Place in top-left corner of screen regardless of scroll position.
            textArea.style.position = 'fixed';
            textArea.style.top = 0;
            textArea.style.left = 0;

            // Ensure it has a small width and height. Setting to 1px / 1em
            // doesn't work as this gives a negative w/h on some browsers.
            textArea.style.width = '2em';
            textArea.style.height = '2em';

            // We don't need padding, reducing the size if it does flash render.
            textArea.style.padding = 0;

            // Clean up any borders.
            textArea.style.border = 'none';
            textArea.style.outline = 'none';
            textArea.style.boxShadow = 'none';

            // Avoid flash of white box if rendered for any reason.
            textArea.style.background = 'transparent';



            textArea.value = "SF" + gridNitrogen.Rows[rowIndex].Cells[1].Value;

            document.body.appendChild(textArea);

            textArea.select();

            document.execCommand("copy");

            document.body.removeChild(textArea);

            lblPW.innerText = "Copied: '" + gridNitrogen.Rows[rowIndex].Cells[1].Value + "' to the clipboard";
        }

        function CarbonOnClick(rowIndex, cellIndex) {
            var textArea = document.createElement("textarea");

            //
            // *** This styling is an extra step which is likely not required. ***
            //
            // Why is it here? To ensure:
            // 1. the element is able to have focus and selection.
            // 2. if element was to flash render it has minimal visual impact.
            // 3. less flakyness with selection and copying which **might** occur if
            //    the textarea element is not visible.
            //
            // The likelihood is the element won't even render, not even a flash,
            // so some of these are just precautions. However in IE the element
            // is visible whilst the popup box asking the user for permission for
            // the web page to copy to the clipboard.
            //

            // Place in top-left corner of screen regardless of scroll position.
            textArea.style.position = 'fixed';
            textArea.style.top = 0;
            textArea.style.left = 0;

            // Ensure it has a small width and height. Setting to 1px / 1em
            // doesn't work as this gives a negative w/h on some browsers.
            textArea.style.width = '2em';
            textArea.style.height = '2em';

            // We don't need padding, reducing the size if it does flash render.
            textArea.style.padding = 0;

            // Clean up any borders.
            textArea.style.border = 'none';
            textArea.style.outline = 'none';
            textArea.style.boxShadow = 'none';

            // Avoid flash of white box if rendered for any reason.
            textArea.style.background = 'transparent';



            textArea.value = "SF" + gridCarbon.Rows[rowIndex].Cells[1].Value;

            document.body.appendChild(textArea);

            textArea.select();

            document.execCommand("copy");

            document.body.removeChild(textArea);

            lblPW.innerText = "Copied: '" + gridCarbon.Rows[rowIndex].Cells[1].Value + "' to the clipboard";
        }
    </script>
    <Table style="align-items:center">
        <tr>
            <td colspan="3" style="vertical-align:middle; text-align:center; font-weight:700">
                <b>Usage:</b>  Click the password and it will be copied to your clipboard
            </td>
        </tr>
        <tr>
            <td style="vertical-align:middle; text-align:center; font-weight:700">Oxygen</td>
            <td style="vertical-align:middle; text-align:center; font-weight:700">Nitrogen</td>
            <td style="vertical-align:middle; text-align:center; font-weight:700">Carbon</td>
        </tr>
        <tr>
            <td style="vertical-align:middle; text-align:center">LoxBoils9019K</td>
            <td style="vertical-align:middle; text-align:center">g00dnitrobeergas</td>
            <td style="vertical-align:middle; text-align:center">&nbsp;</td>
        </tr>
        <tr>
            <td style="vertical-align:middle; text-align:center">&nbsp;</td>
            <td style="vertical-align:middle; text-align:center">nobendswithN7</td>
            <td style="vertical-align:middle; text-align:center">&nbsp;</td>
        </tr>

        <tr>
            <td>
                <obout:Grid ID="gridOxygen" runat="server" AllowAddingRecords="false" OnRowDataBound="OxygenOnRowDataBound" PageSize="-1" ShowHeader="false"></obout:Grid>
            </td>
            <td>
                <obout:Grid ID="gridNitrogen" runat="server" AllowAddingRecords="false" OnRowDataBound="NitrogenOnRowDataBound" PageSize="-1" ShowHeader="false"></obout:Grid>
            </td>
            <td>
                <obout:Grid ID="gridCarbon" runat="server" AllowAddingRecords="false" OnRowDataBound="CarbonOnRowDataBound" PageSize="-1" ShowHeader="false"></obout:Grid>
            </td>
        </tr>
    </Table>
</asp:Content>
