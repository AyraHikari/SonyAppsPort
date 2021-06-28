.class Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment$GetArtistInfoTask;
.super Lcom/sonyericsson/music/metadata/FetchInfoTask;
.source "EditMusicInfoArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetArtistInfoTask"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/metadata/FetchInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public populateInfo(Landroid/content/Context;J)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-direct {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;-><init>()V

    .line 188
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 189
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 191
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistId(J)V

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistId()J

    move-result-wide v3

    invoke-static {p2, v3, v4}, Lcom/sonyericsson/music/common/DBUtils;->getArtistName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object p2

    .line 195
    invoke-static {p2}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v1, "art_path"

    invoke-static {p1, p3, v1}, Lcom/sonyericsson/music/common/DBUtils;->getArtDataFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 194
    invoke-virtual {v0, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistArt(Ljava/io/File;)V

    .line 197
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 198
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtist(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setOriginalArtist(Ljava/lang/String;)V

    .line 202
    :cond_1
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
