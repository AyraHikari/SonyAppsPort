.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudFiles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles$Columns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles$CallMethods;
    }
.end annotation


# static fields
.field public static final ACCOUNT_PATH:Ljava/lang/String; = "account"

.field public static final DOWNLOAD_STATE_DOWNLOADED:I = 0x3

.field public static final DOWNLOAD_STATE_DOWNLOADING:I = 0x2

.field public static final DOWNLOAD_STATE_FAILED:I = 0x4

.field public static final DOWNLOAD_STATE_NOT_DOWNLOADED:I = 0x0

.field public static final DOWNLOAD_STATE_PENDING:I = 0x1

.field public static final METADATA_SCAN_RETRY_LIMIT:I = 0x2

.field public static final METADATA_STATUS_FAILURE_RETRY:I = 0x3

.field public static final METADATA_STATUS_HAS_METADATA:I = 0x1

.field public static final METADATA_STATUS_NO_METADATA:I = 0x2

.field public static final METADATA_STATUS_UNKNOWN:I = 0x0

.field public static final PARENT_ID_NONE:Ljava/lang/String; = "parent_none"

.field public static final PARENT_PATH:Ljava/lang/String; = "parent"

.field private static final PATH:Ljava/lang/String; = "cloud_files"

.field static final QUERY_PARAM_ALBUM_ART:Ljava/lang/String; = "query_album_art"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAccountParentFilesUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 888
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 889
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 890
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final getAlbumArtUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 884
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "query_album_art"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sonyericsson.music.musicinfo/cloud_files"

    .line 876
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getContentUri(I)Landroid/net/Uri;
    .locals 1

    .line 880
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "cloud_files"

    return-object v0
.end method

.method public static final parseAccountAndParent(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 894
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 895
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 896
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "account"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "parent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
