.class public final enum Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;
.super Ljava/lang/Enum;
.source "MusicLibraryCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

.field public static final enum ALBUMS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

.field public static final enum ARTISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

.field private static final FULL_LIBRARY_BROWSE_EXTRA:Ljava/lang/String; = "full_library_browse"

.field public static final enum PLAYLISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

.field public static final enum RECENTLY_PLAYED:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

.field public static final enum TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

.field public static final enum TRACKS_NON_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;


# instance fields
.field private final mBluetoothCategoryType:J

.field private final mIsBrowsable:Z

.field private final mMediaBrowserIdBase:Ljava/lang/String;

.field private final mNameResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 14
    new-instance v8, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const-string v1, "RECENTLY_PLAYED"

    const-string v3, "content://com.sonyericsson.music.mediabrowser.RECENTLY_PLAYED"

    const/4 v2, 0x0

    const v4, 0x7f1002b6

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IZJ)V

    sput-object v8, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->RECENTLY_PLAYED:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    .line 19
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const-string v10, "PLAYLISTS"

    const-string v12, "content://com.sonyericsson.music.mediabrowser.PLAYLISTS"

    const/4 v11, 0x1

    const v13, 0x7f1002b3

    const/4 v14, 0x1

    const-wide/16 v15, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IZJ)V

    sput-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->PLAYLISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    .line 24
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const-string v2, "ARTISTS"

    const-string v4, "content://com.sonyericsson.music.mediabrowser.ARTISTS"

    const/4 v3, 0x2

    const v5, 0x7f1002b0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IZJ)V

    sput-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ARTISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    .line 29
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const-string v10, "ALBUMS"

    const-string v12, "content://com.sonyericsson.music.mediabrowser.ALBUMS"

    const/4 v11, 0x3

    const v13, 0x7f1002af

    const-wide/16 v15, 0x2

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IZJ)V

    sput-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ALBUMS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    .line 34
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const-string v2, "TRACKS_NON_BROWSABLE"

    const-string v4, "content://com.sonyericsson.music.mediabrowser.TRACKS_NON_BROWSABLE"

    const/4 v3, 0x4

    const v5, 0x7f1002b7

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IZJ)V

    sput-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_NON_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    .line 39
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const-string v10, "TRACKS_BROWSABLE"

    const-string v12, "content://com.sonyericsson.music.mediabrowser.TRACKS_BROWSABLE"

    const/4 v11, 0x5

    const v13, 0x7f1002b8

    const-wide/16 v15, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IZJ)V

    sput-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->RECENTLY_PLAYED:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->PLAYLISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ARTISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ALBUMS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_NON_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->$VALUES:[Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZJ)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mMediaBrowserIdBase:Ljava/lang/String;

    .line 54
    iput p4, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mNameResourceId:I

    .line 55
    iput-boolean p5, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mIsBrowsable:Z

    .line 56
    iput-wide p6, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mBluetoothCategoryType:J

    return-void
.end method

.method public static isFullLibraryBrowse(Ljava/lang/String;)Z
    .locals 2

    .line 77
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "full_library_browse"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;
    .locals 1

    .line 13
    const-class v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;
    .locals 1

    .line 13
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->$VALUES:[Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mMediaBrowserIdBase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method getBluetoothCategoryType()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mBluetoothCategoryType:J

    return-wide v0
.end method

.method public getMediaBrowserId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mMediaBrowserIdBase:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaBrowserId(Z)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserIdAsUri(Z)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMediaBrowserIdAsUri()Landroid/net/Uri;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMediaBrowserIdAsUri(Z)Landroid/net/Uri;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mMediaBrowserIdBase:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "full_library_browse"

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method getNameResourceId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mNameResourceId:I

    return v0
.end method

.method isBrowsable()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->mIsBrowsable:Z

    return v0
.end method
