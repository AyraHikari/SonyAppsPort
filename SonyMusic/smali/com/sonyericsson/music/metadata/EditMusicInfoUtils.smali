.class public Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;
.super Ljava/lang/Object;
.source "EditMusicInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;
    }
.end annotation


# static fields
.field public static final ART_URI:Ljava/lang/String; = "art_uri"

.field public static final EXTRA_ALBUM_ART_CHANGED:Ljava/lang/String; = "has_album_art_changed"

.field public static final EXTRA_ARTIST_ART_CHANGED:Ljava/lang/String; = "has_artist_art_changed"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NOTIFICATION_ACTION:Ljava/lang/String; = "com.sonyericsson.music.UpdateAsYouPlay.ART_UPDATED"

.field private static sScreenWidth:F = -1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCaches(Landroid/content/Context;)V
    .locals 2

    .line 772
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->clearDefaultCache()V

    .line 773
    invoke-static {}, Lcom/sonyericsson/music/common/PaletteUtils;->clearColorPickCache()V

    .line 774
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->clearCache()V

    .line 775
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sonyericsson.music.service.internal.CLEAR_ARTDECODER"

    .line 776
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static entryExists(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 600
    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 601
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 604
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_2
    throw p0
.end method

.method private static getContentValues(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/ContentValues;
    .locals 4

    .line 186
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isTitleChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "artist"

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "album"

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isGenreChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "genre"

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isYearChanged()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 205
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    const-string v2, "year"

    .line 206
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 214
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isDiscNbrChanged()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isTrackNbrChanged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 216
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getDiscNbr()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTrackNbr()Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-static {v1, p0}, Lcom/sonyericsson/music/common/MusicUtils;->discAndTrackNumberToMediaStoreTrackNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v1, "track"

    .line 218
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    return-object v0
.end method

.method static getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 706
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "crop"

    const/4 v1, 0x1

    .line 707
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "aspectX"

    .line 708
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "aspectY"

    .line 709
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "scale"

    .line 710
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "return-data"

    const/4 v2, 0x0

    .line 712
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "output"

    .line 713
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 714
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static getDefaultAlbumArt(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 796
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070090

    .line 797
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 798
    invoke-static {p1, p0}, Lcom/sonyericsson/music/common/GawUtils;->generateArtwork(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static getDefaultArtistArt(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 802
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070091

    .line 803
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 804
    invoke-static {p1, p0}, Lcom/sonyericsson/music/common/GawUtils;->generateArtwork(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static getExistingImageMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v7, 0x0

    .line 837
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/String;

    const-string v1, "art_path"

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const-string v1, "art_source"

    const/4 v10, 0x1

    aput-object v1, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v1, "art_path"

    .line 842
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "art_source"

    .line 844
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 845
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 848
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 851
    :cond_1
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Albums;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    const-string v1, "art_path"

    aput-object v1, v3, v9

    const-string v1, "art_source"

    aput-object v1, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string p0, "art_path"

    .line 855
    invoke-interface {v7, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v1, "art_source"

    .line 857
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 858
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 859
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    .line 864
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 866
    :cond_4
    throw p0

    return-void
.end method

.method public static getImageResizeWidth(Landroid/content/Context;)F
    .locals 2

    .line 823
    sget v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->sScreenWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 825
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    sput p0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->sScreenWidth:F

    .line 827
    :cond_0
    sget p0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->sScreenWidth:F

    return p0
.end method

.method private static getOrCreateGenreId(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 13

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "external"

    .line 432
    invoke-static {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v10, 0x2

    .line 433
    new-array v6, v10, [Ljava/lang/String;

    const-string v4, "_id"

    const/4 v11, 0x0

    aput-object v4, v6, v11

    const-string v4, "name"

    const/4 v12, 0x1

    aput-object v4, v6, v12

    const-string v7, "name =?"

    new-array v8, v12, [Ljava/lang/String;

    aput-object p1, v8, v11

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    .line 434
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 438
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "_id"

    .line 439
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    .line 446
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "name"

    .line 447
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    .line 478
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v1

    :cond_3
    if-eqz v0, :cond_4

    .line 456
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_4
    new-array v6, v10, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v6, v11

    const-string v4, "name"

    aput-object v4, v6, v12

    const-string v7, "name =?"

    new-array v8, v12, [Ljava/lang/String;

    aput-object p1, v8, v11

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    .line 459
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 461
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_5

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "_id"

    .line 463
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 478
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-wide v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_7
    throw p0
.end method

.method private static insertOrUpdateGenre(Landroid/content/ContentResolver;JI)Landroid/net/Uri;
    .locals 9

    const-string v0, "external"

    .line 387
    invoke-static {v0, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 390
    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v8, 0x0

    aput-object v1, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v2, "_id"

    .line 392
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 394
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "external"

    .line 397
    invoke-static {v5, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->AUDIO_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " =?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    .line 399
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 398
    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    const-string v0, "external"

    .line 413
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 414
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 415
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->AUDIO_ID:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    :cond_2
    return-object v7

    :catchall_1
    move-exception p0

    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_3

    .line 407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_3
    throw p0

    return-void
.end method

.method static isCropAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static isImageCropAppAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 766
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 767
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static notifyArtChanged(Landroid/content/Context;ZZ)V
    .locals 2

    .line 787
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.UpdateAsYouPlay.ART_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "has_album_art_changed"

    .line 788
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "has_artist_art_changed"

    .line 789
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.permission.BROADCAST"

    .line 791
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static saveAlbumData(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)J
    .locals 8

    .line 641
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 645
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "album_id = ?"

    const/4 v3, 0x1

    .line 647
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 648
    invoke-static {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getContentValues(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/ContentValues;

    move-result-object v5

    .line 651
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 652
    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 656
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumChanged()Z

    move-result v1

    if-nez v1, :cond_0

    move-wide v1, p1

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v7, v1, v4

    if-eqz v7, :cond_3

    .line 662
    invoke-virtual {p3, v1, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumId(J)V

    .line 663
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isYearChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v4

    .line 664
    invoke-static {v0, v1, v2, v4}, Lcom/sonyericsson/music/common/DBUtils;->addYearToTracksWithAlbumId(Landroid/content/ContentResolver;JLjava/lang/String;)Z

    :cond_1
    cmp-long v4, v1, p1

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    move-wide v1, p1

    const/4 p1, 0x0

    .line 676
    :goto_1
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumArtChanged()Z

    move-result p2

    const/4 v4, 0x0

    if-nez p2, :cond_5

    if-eqz v6, :cond_6

    .line 677
    :cond_5
    invoke-static {p0, p3, v4}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->updateAlbumArt(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Ljava/util/HashMap;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    :cond_6
    if-eqz p1, :cond_9

    .line 687
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string p0, "_id"

    .line 689
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 690
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 691
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveTrackIdChanged(Landroid/content/ContentResolver;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_9

    .line 696
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 698
    :cond_8
    throw p0

    :cond_9
    :goto_3
    return-wide v1
.end method

.method private static saveAlbumImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 541
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 542
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 549
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    :try_start_1
    const-string p2, "artist"

    .line 551
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const-string v2, "album"

    .line 552
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 553
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    new-instance v3, Landroid/util/Pair;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 557
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    if-eqz p1, :cond_2

    .line 563
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 568
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    const-string v5, "art_path"

    .line 570
    invoke-static {p0, v3, v5}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->entryExists(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    .line 572
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "art_path"

    .line 573
    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "art_source"

    .line 574
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, p4

    goto :goto_2

    :cond_3
    const-string v8, ""

    :goto_2
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    .line 578
    invoke-virtual {p0, v3, v6, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    and-int/2addr v0, v4

    goto :goto_1

    :cond_5
    const-string v3, "artist"

    .line 581
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    .line 582
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "art_path"

    .line 583
    invoke-virtual {v6, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Albums;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    :cond_6
    and-int/2addr v0, v4

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    return v0

    :catchall_1
    move-exception p0

    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_9

    .line 563
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_9
    throw p0

    return-void
.end method

.method private static saveAlbumImage(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    .line 533
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {p0, v0, v1, p2}, Lcom/sonyericsson/music/common/FileUtils;->storeImageToExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumId()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p2, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveAlbumImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static saveArtistData(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)J
    .locals 10

    .line 78
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_11

    .line 84
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "artist_id = ?"

    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 87
    invoke-static {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getContentValues(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/ContentValues;

    move-result-object v7

    .line 88
    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 89
    invoke-virtual {v0, v3, v7, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v8

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/sonyericsson/music/common/DBUtils;->getArtistId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_2

    .line 96
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistId()J

    move-result-wide v1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 97
    :goto_1
    invoke-virtual {p3, v3, v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistId(J)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    move-wide v3, p1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 101
    :goto_2
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistArtChanged()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    if-eqz p2, :cond_d

    .line 104
    :cond_4
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getImageResizeWidth(Landroid/content/Context;)F

    move-result v6

    float-to-int v6, v6

    .line 111
    :try_start_0
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 112
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/sonyericsson/music/common/PicassoUtils;->getBitmap(Landroid/content/Context;Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v6

    move v7, p1

    move-object p1, v6

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    if-nez p2, :cond_8

    .line 115
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_7

    .line 117
    :try_start_1
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 118
    invoke-static {p0, v1}, Lcom/sonyericsson/music/common/PicassoUtils;->invalidate(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    or-int/2addr p1, v6

    move v7, p1

    move-object p1, v2

    goto :goto_4

    :cond_8
    move v7, p1

    move-object p1, v2

    const/4 v6, 0x0

    goto :goto_4

    :catch_0
    const/4 v6, 0x0

    :catch_1
    move v7, p1

    move-object p1, v2

    :goto_4
    if-nez v6, :cond_b

    if-eqz p1, :cond_9

    .line 130
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, p1, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveArtistImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_a

    if-eqz v1, :cond_a

    .line 140
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 141
    invoke-static {p0, v1}, Lcom/sonyericsson/music/common/PicassoUtils;->invalidate(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_a
    or-int p0, v7, p1

    move p1, p0

    goto :goto_6

    :cond_b
    move p1, v7

    :goto_6
    if-eqz p2, :cond_d

    .line 146
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistChanged()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 149
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "artist"

    .line 150
    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "artist =?"

    .line 152
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getOriginalArtist()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v8

    .line 154
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Albums;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3, p0, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    or-int/2addr p1, v5

    :cond_d
    if-eqz p1, :cond_10

    .line 167
    :try_start_2
    invoke-static {v0, v3, v4}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string p0, "_id"

    .line 169
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 170
    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 171
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveTrackIdChanged(Landroid/content/ContentResolver;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :cond_e
    if-eqz v2, :cond_10

    .line 176
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_f
    throw p0

    :cond_10
    :goto_9
    move-wide p1, v3

    :cond_11
    return-wide p1
.end method

.method private static saveArtistImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    .line 615
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 617
    invoke-static {}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtFolderName()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-static {p0, v0, v1, p2}, Lcom/sonyericsson/music/common/FileUtils;->storeImageToExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 620
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveArtistImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static saveArtistImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 629
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "art_path"

    .line 630
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "artist"

    .line 631
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "art_source"

    .line 633
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 632
    :goto_0
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static saveOnlineImage(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Z
    .locals 5

    .line 487
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getExistingImageMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 488
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 492
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getImageResizeWidth(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    .line 493
    invoke-static {p0, p2, v2}, Lcom/sonyericsson/music/common/PicassoUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 496
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    if-ne p3, v0, :cond_0

    .line 497
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtFolderName()Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static {p0, v0, v3, v2}, Lcom/sonyericsson/music/common/FileUtils;->storeImageToExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 507
    sget-object v2, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 512
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveArtistImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 509
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {p0, v2, v3, v0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveAlbumImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 523
    :catch_0
    sget-object p0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class p1, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;

    const-string p2, "No memory available when allocating image"

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :catch_1
    :cond_2
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static savePhotoFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 723
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 725
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->readInputStreamFully(Ljava/io/InputStream;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 727
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x1

    .line 755
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 756
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    .line 755
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 756
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v2, v0

    .line 747
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 749
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "eng"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "userdebug"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_1

    .line 755
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 756
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    .line 750
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 739
    :goto_1
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 741
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "eng"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "userdebug"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_2

    .line 755
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 756
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    .line 742
    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    move-object v2, v0

    .line 736
    :catch_5
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 755
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 756
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catch_6
    move-object v2, v0

    .line 733
    :catch_7
    :try_start_5
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 755
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 756
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_1
    move-exception p0

    .line 755
    :goto_2
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 756
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 757
    throw p0
.end method

.method static saveTrackData(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;Ljava/util/HashMap;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 284
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v4

    if-lez v7, :cond_17

    .line 287
    sget-object v7, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    .line 289
    new-array v10, v9, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 291
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getContentValues(Lcom/sonyericsson/music/metadata/EditMusicInfo;)Landroid/content/ContentValues;

    move-result-object v12

    .line 294
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 295
    invoke-virtual {v11, v7, v12, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_4

    .line 299
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistChanged()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 300
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/sonyericsson/music/common/DBUtils;->getArtistId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v8, v12, v4

    if-eqz v8, :cond_2

    .line 302
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistId()J

    move-result-wide v14

    cmp-long v8, v12, v14

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 303
    :goto_1
    invoke-virtual {v3, v12, v13}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtistId(J)V

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 306
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumChanged()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 307
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v10, v12, v4

    if-eqz v10, :cond_6

    .line 309
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumId()J

    move-result-wide v14

    cmp-long v8, v12, v14

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 310
    :goto_3
    invoke-virtual {v3, v12, v13}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumId(J)V

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 316
    :cond_6
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumArtChanged()Z

    move-result v10

    if-nez v10, :cond_7

    if-eqz v8, :cond_9

    :cond_7
    if-nez p4, :cond_8

    .line 318
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getExistingImageMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v10

    goto :goto_5

    :cond_8
    move-object/from16 v10, p4

    .line 320
    :goto_5
    invoke-static {v0, v3, v10}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->updateAlbumArt(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Ljava/util/HashMap;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 323
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistArtChanged()Z

    move-result v10

    if-nez v10, :cond_a

    if-eqz v8, :cond_12

    .line 324
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 327
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getImageResizeWidth(Landroid/content/Context;)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x0

    .line 331
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 332
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v8

    invoke-static {v0, v8, v12}, Lcom/sonyericsson/music/common/PicassoUtils;->getBitmap(Landroid/content/Context;Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_7

    :cond_b
    if-nez v8, :cond_e

    .line 335
    invoke-virtual {v11, v10, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_c

    const/4 v8, 0x1

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_d

    .line 337
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 338
    invoke-static {v0, v10}, Lcom/sonyericsson/music/common/PicassoUtils;->invalidate(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    or-int/2addr v7, v8

    move-object v8, v13

    goto :goto_7

    :cond_e
    move-object v8, v13

    goto :goto_7

    :catch_0
    move-object v8, v13

    :goto_7
    if-nez v8, :cond_f

    goto :goto_9

    :cond_f
    if-eqz v8, :cond_10

    .line 350
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12, v8, v13}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveArtistImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v8

    goto :goto_8

    :cond_10
    const/4 v8, 0x0

    :goto_8
    if-eqz v8, :cond_11

    if-eqz v10, :cond_11

    .line 358
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 359
    invoke-static {v0, v10}, Lcom/sonyericsson/music/common/PicassoUtils;->invalidate(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_11
    or-int/2addr v7, v8

    .line 365
    :cond_12
    :goto_9
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isGenreChanged()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 367
    invoke-virtual/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v11, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getOrCreateGenreId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v0, v1

    .line 369
    invoke-static {v11, v12, v13, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->insertOrUpdateGenre(Landroid/content/ContentResolver;JI)Landroid/net/Uri;

    move-result-object v0

    cmp-long v3, v12, v4

    if-nez v3, :cond_13

    if-nez v0, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_14

    if-eqz v0, :cond_15

    :cond_14
    const/4 v6, 0x1

    :cond_15
    or-int v0, v7, v6

    move v6, v0

    goto :goto_b

    :cond_16
    move v6, v7

    :goto_b
    if-eqz v6, :cond_17

    .line 377
    invoke-static {v11, v1, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveTrackIdChanged(Landroid/content/ContentResolver;J)V

    :cond_17
    return v6
.end method

.method static saveTrackIdChanged(Landroid/content/ContentResolver;J)V
    .locals 3

    if-eqz p0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 810
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "track_id"

    .line 811
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Tracks;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-void
.end method

.method private static updateAlbumArt(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 227
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 233
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 235
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->getImageResizeWidth(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 239
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumArt()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumArt()Ljava/io/File;

    move-result-object p2

    invoke-static {p0, p2, v1}, Lcom/sonyericsson/music/common/PicassoUtils;->getBitmap(Landroid/content/Context;Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p2

    move-object v1, p2

    const/4 p2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {p2, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 249
    :try_start_1
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 250
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/PicassoUtils;->invalidate(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    or-int v1, v3, p2

    move v4, v1

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v2

    const/4 p2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    const/4 p2, 0x0

    :catch_1
    move-object v1, v2

    const/4 v4, 0x0

    :goto_1
    if-nez p2, :cond_5

    if-eqz v1, :cond_4

    .line 264
    invoke-static {p0, p1, v1, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->saveAlbumImage(Landroid/content/Context;Lcom/sonyericsson/music/metadata/EditMusicInfo;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v3

    move v4, v3

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 270
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 271
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/PicassoUtils;->invalidate(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    return v4
.end method
