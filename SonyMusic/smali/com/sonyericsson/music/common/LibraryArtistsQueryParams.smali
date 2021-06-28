.class public final Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;
.super Ljava/lang/Object;
.source "LibraryArtistsQueryParams.java"


# static fields
.field private static final ARTISTS_COLUMNS:[Ljava/lang/String;

.field private static final ARTISTS_COLUMNS_FROM_Q:[Ljava/lang/String;

.field private static final ARTISTS_SORT_ORDER:Ljava/lang/String; = "replace(artist, \'<unknown>\', \'unknown_artist\') COLLATE NOCASE"

.field private static final AUDIO_COLUMNS:[Ljava/lang/String;

.field private static final AUDIO_COLUMNS_FROM_Q:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 22
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "replace(artist, \"<unknown>\", \"unknown_artist\") AS artist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "title"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->AUDIO_COLUMNS:[Ljava/lang/String;

    .line 32
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "artist"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v5

    sput-object v1, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->AUDIO_COLUMNS_FROM_Q:[Ljava/lang/String;

    .line 47
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "replace(artist, \"<unknown>\", \"unknown_artist\")"

    aput-object v2, v1, v4

    const-string v2, "number_of_tracks"

    aput-object v2, v1, v5

    sput-object v1, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->ARTISTS_COLUMNS:[Ljava/lang/String;

    .line 56
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->ARTISTS_COLUMNS_FROM_Q:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtistsColumns(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 94
    sget-object v0, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->ARTISTS_COLUMNS_FROM_Q:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getLocalizedColumns(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->ARTISTS_COLUMNS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getLocalizedColumns(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioColumns(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 84
    sget-object v0, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->AUDIO_COLUMNS_FROM_Q:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getLocalizedColumns(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->AUDIO_COLUMNS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getLocalizedColumns(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLocalizedColumns(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const v0, 0x7f10018f

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "unknown_artist"

    .line 102
    invoke-static {p0, v0, p1}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelection()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSelectionArgs()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSortOrder(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f10018f

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "replace(artist, \'<unknown>\', \'unknown_artist\') COLLATE NOCASE"

    const-string v1, "unknown_artist"

    .line 117
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUri()Landroid/net/Uri;
    .locals 1

    .line 77
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
