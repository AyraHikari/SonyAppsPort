.class Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "ClearDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/ClearDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderDataTaskLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;)V
    .locals 0

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 206
    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;->mType:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    return-void
.end method


# virtual methods
.method public getType()Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;->mType:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;->loadInBackground()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/lang/String;
    .locals 8

    .line 211
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;->mType:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    sget-object v2, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ARTIST:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtFolderName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/FileUtils;->getTotalFileSize(Ljava/io/File;)J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-gez v7, :cond_1

    const v3, 0x7f10005e

    .line 216
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v7, 0x7f10005f

    .line 218
    new-array v6, v6, [Ljava/lang/Object;

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
