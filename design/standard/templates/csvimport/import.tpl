<form enctype="multipart/form-data" method="post" name="importform" action={"/csvimport/import"|ezurl}>
    {section show=$error} {* $error can be either bool=false or array *}
        {section show=$error.number|ne(0)}
            <div class="message-warning">
                <h2>
                    <span class="time">[{currentdate()|l10n( shortdatetime )}]</span>
                    {$error.number}) {$error.message}
                </h2>
            </div>
        {/section}
    {/section}

    <div class="border-box">
        <div class="border-tl"><div class="border-tr"><div class="border-tc"></div></div></div>
        <div class="border-ml"><div class="border-mr"><div class="border-mc float-break">

                    <div class="content-view-csvimport-export">

                        <div class="attribute-header">
                            <h1>Importa oggetti da file CSV in <a href="{$node.url_alias|ezurl(no)}"
                                                                  title="Importa in {$node.name|wash()}">{$node.name|wash()}</a>
                            </h1>
                        </div>

                        <div class="attribute-description">
                            <div class="block">
                                <input type="checkbox" name="Incremental" value="1"/>Import di tipo incrementale?
                            </div>

                            <div class="context-block">

                                <div class="box-header">
                                    <div class="box-ml">
                                        <h3 class="context-title">Importa da file zip</h3>
                                        <div class="header-mainline"></div>
                                    </div>
                                </div>

                                <div class="box-bc">
                                    <div class="box-ml">
                                        <div class="box-content">
                                            <div class="block">
                                                <input type="file" name="ImportFile"/>
                                                <input class="button" type="submit" name="UploadFileButton"
                                                       value="Upload file"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="context-block">

                                <div class="box-header">
                                    <div class="box-ml">
                                        <h3 class="context-title">Importa da Google Spreadsheet</h3>
                                        <div class="header-mainline"></div>
                                    </div>
                                </div>

                                <div class="box-bc">
                                    <div class="box-ml">
                                        <div class="box-content">
                                            <div class="block">
                                                <input type="text" class="halfbox" name="GoogleSpreadsheetUrl" value="{$googleSpreadsheetUrl|wash()}"/>
                                                <input class="button" type="submit" name="SelectGoogleSpreadsheetButton"
                                                       value="Import"/>
                                            </div>
                                            <p><a href={'publish_to_web.png'|ezimage()}>Il documento Google Spreadsheet deve essere pubblicato sul web</a></p>

                                        </div>
                                    </div>
                                </div>

                            </div>


                            <input type="hidden" name="NodeID" value="{$NodeID}"/>
                        </div>

                    </div>

        </div></div></div>
        <div class="border-bl"><div class="border-br"><div class="border-bc"></div></div></div>
    </div>

</form>
