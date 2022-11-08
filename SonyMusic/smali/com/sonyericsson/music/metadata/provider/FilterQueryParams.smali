.class public Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;
.super Ljava/lang/Object;
.source "FilterQueryParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;,
        Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","

.field static final MEDIASTORE_WHERE_ARGS_MYPLAYLISTS:[Ljava/lang/String;

.field static final MEDIASTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS:[Ljava/lang/String;

.field static final MEDIASTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS_FROM_R:[Ljava/lang/String;

.field static final MEDIASTORE_WHERE_MYPLAYLISTS:Ljava/lang/String; = "name NOT IN (?,?,?,?,?,?,?) "

.field static final MEDIASTORE_WHERE_MY_EDITABLE_PLAYLISTS:Ljava/lang/String; = "name NOT IN (?,?,?,?,?,?,?)  AND _data NOT NULL AND _data LIKE ?"

.field static final MUSICINFOSTORE_WHERE_ARGS_MYPLAYLISTS:[Ljava/lang/String;

.field static final MUSICINFOSTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS:[Ljava/lang/String;

.field static final MUSICINFOSTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS_FROM_R:[Ljava/lang/String;

.field static final MUSICINFOSTORE_WHERE_MYPLAYLISTS:Ljava/lang/String; = "smart_playlist_type = ?"

.field static final MUSICINFOSTORE_WHERE_MY_EDITABLE_PLAYLISTS:Ljava/lang/String; = "smart_playlist_type = ? AND path NOT NULL AND path LIKE ?"

.field static final MUSICINFOSTORE_WHERE_MY_EDITABLE_PLAYLISTS_FROM_R:Ljava/lang/String; = "smart_playlist_type = ? AND path NOT NULL AND path LIKE ?  OR smart_playlist_type = ? AND path NOT NULL AND path LIKE ?"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    .line 29
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "WALKMAN most played tracks"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "WALKMAN recently played tracks"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "WALKMAN favorites"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Music_most_played_tracks"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Music_recently_played_tracks"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "Music_newly_added_tracks"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "Music_favorites"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MEDIASTORE_WHERE_ARGS_MYPLAYLISTS:[Ljava/lang/String;

    const/16 v1, 0x8

    .line 48
    new-array v2, v1, [Ljava/lang/String;

    const-string v10, "WALKMAN most played tracks"

    aput-object v10, v2, v3

    const-string v10, "WALKMAN recently played tracks"

    aput-object v10, v2, v4

    const-string v10, "WALKMAN favorites"

    aput-object v10, v2, v5

    const-string v10, "Music_most_played_tracks"

    aput-object v10, v2, v6

    const-string v10, "Music_recently_played_tracks"

    aput-object v10, v2, v7

    const-string v10, "Music_newly_added_tracks"

    aput-object v10, v2, v8

    const-string v10, "Music_favorites"

    aput-object v10, v2, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v0

    sput-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MEDIASTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS:[Ljava/lang/String;

    .line 66
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "WALKMAN most played tracks"

    aput-object v2, v1, v3

    const-string v2, "WALKMAN recently played tracks"

    aput-object v2, v1, v4

    const-string v2, "WALKMAN favorites"

    aput-object v2, v1, v5

    const-string v2, "Music_most_played_tracks"

    aput-object v2, v1, v6

    const-string v2, "Music_recently_played_tracks"

    aput-object v2, v1, v7

    const-string v2, "Music_newly_added_tracks"

    aput-object v2, v1, v8

    const-string v2, "Music_favorites"

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_R:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%.m3u"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MEDIASTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS_FROM_R:[Ljava/lang/String;

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 85
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MUSICINFOSTORE_WHERE_ARGS_MYPLAYLISTS:[Ljava/lang/String;

    .line 101
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 102
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MUSICINFOSTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS:[Ljava/lang/String;

    .line 109
    new-array v0, v7, [Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 110
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 112
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.m3u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MUSICINFOSTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS_FROM_R:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLike(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " AND "

    .line 524
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LIKE ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static addNot(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 531
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " AND "

    .line 533
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <> ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static addNotNull(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " AND "

    .line 515
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " NOT NULL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static addRawStatement(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 540
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " AND "

    .line 542
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static addToWhereString(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)V
    .locals 2

    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 497
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " AND "

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 501
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    if-le p2, v0, :cond_4

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p1, " IN "

    goto :goto_0

    :cond_2
    const-string p1, " NOT IN "

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_1
    add-int/lit8 p3, p2, -0x1

    if-ge p1, p3, :cond_3

    const-string p3, "?,"

    .line 505
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "?)"

    .line 507
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    return-void
.end method

.method public static appendParams(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 464
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 465
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->concatParamsValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 466
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 469
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static concatParamsValue([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 485
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 486
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 488
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p0, :cond_8

    .line 378
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 379
    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getFilterType(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 381
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    .line 382
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 385
    sget-object v7, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$FilterQueryParams$Filter:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v4, "1"

    .line 411
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addNot(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v4, "0"

    .line 414
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :pswitch_2
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 440
    array-length v6, v4

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    .line 445
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addLike(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 446
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 441
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple arguments not supported for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME_LIKE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 443
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :pswitch_3
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->getParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "name NOT IN (?,?,?,?,?,?,?) "

    .line 419
    invoke-static {v0, v4}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addRawStatement(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 421
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MEDIASTORE_WHERE_ARGS_MYPLAYLISTS:[Ljava/lang/String;

    .line 422
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 421
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 423
    :cond_2
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->getParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "name NOT IN (?,?,?,?,?,?,?)  AND _data NOT NULL AND _data LIKE ?"

    .line 424
    invoke-static {v0, v4}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addRawStatement(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 429
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-le v4, v5, :cond_3

    .line 430
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MEDIASTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS_FROM_R:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 433
    :cond_3
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MEDIASTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS:[Ljava/lang/String;

    .line 434
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 433
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 405
    :pswitch_4
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v6

    array-length v7, v4

    .line 407
    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->isInclusive()Z

    move-result v5

    .line 406
    invoke-static {v0, v6, v7, v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addToWhereString(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)V

    .line 408
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 383
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 456
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_6

    move-object p0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 457
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 458
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    goto :goto_2

    :cond_8
    move-object p0, v2

    .line 460
    :goto_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p0, :cond_b

    .line 263
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 264
    invoke-static {v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getFilterType(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 266
    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "null"

    .line 267
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 270
    sget-object v9, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$FilterQueryParams$Filter:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 347
    array-length v8, v6

    if-gt v8, v11, :cond_1

    .line 352
    invoke-virtual {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addLike(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 353
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 348
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple arguments not supported for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME_LIKE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 350
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-nez v5, :cond_2

    const-string v5, "is_deleted = ? AND is_available = ?"

    .line 330
    invoke-static {v0, v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addRawStatement(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 332
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v5, v4

    const-string v6, "1"

    aput-object v6, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x1

    .line 337
    :cond_2
    invoke-virtual {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v11, v11}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addToWhereString(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)V

    const-string v6, "1"

    .line 339
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "1"

    .line 340
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string v6, "0"

    .line 342
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_2
    if-nez v5, :cond_4

    const-string v5, "is_deleted = ? AND is_available = ?"

    .line 299
    invoke-static {v0, v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addRawStatement(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 301
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v5, v4

    const-string v6, "1"

    aput-object v6, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x1

    .line 306
    :cond_4
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-virtual {v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->getParameter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "smart_playlist_type = ?"

    .line 307
    invoke-static {v0, v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addRawStatement(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 309
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MUSICINFOSTORE_WHERE_ARGS_MYPLAYLISTS:[Ljava/lang/String;

    .line 310
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 309
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 311
    :cond_5
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-virtual {v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->getParameter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-le v6, v7, :cond_6

    const-string v6, "smart_playlist_type = ? AND path NOT NULL AND path LIKE ?  OR smart_playlist_type = ? AND path NOT NULL AND path LIKE ?"

    .line 316
    invoke-static {v0, v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addRawStatement(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 318
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MUSICINFOSTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS_FROM_R:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    const-string v6, "smart_playlist_type = ? AND path NOT NULL AND path LIKE ?"

    .line 321
    invoke-static {v0, v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addRawStatement(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 323
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->MUSICINFOSTORE_WHERE_ARGS_MY_EDITABLE_PLAYLISTS:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :pswitch_3
    const-string v6, ","

    .line 292
    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v8

    array-length v9, v6

    .line 294
    invoke-virtual {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->isInclusive()Z

    move-result v7

    .line 293
    invoke-static {v0, v8, v9, v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->addToWhereString(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)V

    .line 295
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 268
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_9

    move-object p0, v2

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    .line 366
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    goto :goto_2

    :cond_b
    move-object p0, v2

    .line 368
    :goto_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getParamsValue(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, ","

    .line 477
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
