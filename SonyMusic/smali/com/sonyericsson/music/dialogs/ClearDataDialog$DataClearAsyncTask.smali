.class Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;
.super Landroid/os/AsyncTask;
.source "ClearDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/ClearDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataClearAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTypes:[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->mTypes:[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->mTypes:[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v7, v0, v3

    .line 170
    sget-object v8, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ARTIST:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    if-ne v7, v8, :cond_0

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    .line 171
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Albums;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    :goto_1
    const/4 v9, 0x0

    .line 172
    invoke-virtual {p1, v8, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    or-int/2addr v4, v8

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    .line 174
    sget-object v8, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ALBUM:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-nez v6, :cond_3

    .line 177
    sget-object v8, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ARTIST:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    if-ne v7, v8, :cond_3

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 183
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 184
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v5, v6}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->notifyArtChanged(Landroid/content/Context;ZZ)V

    .line 186
    new-instance p1, Lcom/sonyericsson/music/metadata/UpdateMusicInfo;

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/metadata/UpdateMusicInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/UpdateMusicInfo;->cleanUpUnusedArt()V

    .line 188
    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->mContext:Landroid/content/Context;

    const v0, 0x7f1000f5

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
