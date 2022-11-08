.class public final enum Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
.super Ljava/lang/Enum;
.source "SmartPlaylistUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/SmartPlaylistUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmartPlaylistType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

.field public static final enum FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

.field public static final enum MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

.field public static final enum NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

.field public static final enum RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

.field private static final SMART_PLAYLIST_URI_COMMON_PART:Ljava/lang/String; = "content://com.sonymobile.music.smartplaylist/"


# instance fields
.field private final mDefaultArtResourceId:I

.field private final mId:Ljava/lang/String;

.field private final mMediaPlaybackConstant:I

.field private final mMediaProviderName:Ljava/lang/String;

.field private final mNameResourceId:I

.field private final mProviderType:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 57
    new-instance v9, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const-string v1, "RECENTLY_PLAYED"

    const-string v3, "recently_played"

    const-string v6, "Music_recently_played_tracks"

    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_RECENTLY_PLAYED:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    const/4 v2, 0x0

    const v4, 0x7f1001de

    const v5, 0x7f0801b2

    const/4 v7, 0x5

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;)V

    sput-object v9, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 64
    new-instance v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const-string v11, "NEWLY_ADDED"

    const-string v13, "newly_added"

    const-string v16, "Music_newly_added_tracks"

    sget-object v18, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NEWLY_ADDED:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    const/4 v12, 0x1

    const v14, 0x7f1001cf

    const v15, 0x7f0801b0

    const/16 v17, 0x6

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;)V

    sput-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 70
    new-instance v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const-string v2, "MOST_PLAYED"

    const-string v4, "most_played"

    const-string v7, "Music_most_played_tracks"

    sget-object v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_MOST_PLAYED:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    const/4 v3, 0x2

    const v5, 0x7f1001ca

    const v6, 0x7f0801af

    const/4 v8, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;)V

    sput-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 76
    new-instance v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const-string v11, "FAVOURITES"

    const-string v13, "favorites"

    const-string v16, "Music_favorites"

    sget-object v18, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_FAVORITES:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    const/4 v12, 0x3

    const v14, 0x7f1001cb

    const v15, 0x7f0801b1

    const/16 v17, 0x4

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;)V

    sput-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const/4 v0, 0x4

    .line 54
    new-array v0, v0, [Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->$VALUES:[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mId:Ljava/lang/String;

    .line 95
    iput p4, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mNameResourceId:I

    .line 96
    iput p5, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mDefaultArtResourceId:I

    .line 97
    iput-object p6, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mMediaProviderName:Ljava/lang/String;

    .line 98
    iput p7, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mMediaPlaybackConstant:I

    .line 99
    iput-object p8, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mProviderType:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    return-void
.end method

.method public static getSmartPlaylistType(I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 5

    .line 131
    invoke-static {}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->values()[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 132
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 5

    .line 140
    invoke-static {}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->values()[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 141
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSmartPlaylistType(Ljava/lang/String;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 5

    if-eqz p0, :cond_1

    .line 150
    invoke-static {}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->values()[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 151
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 1

    .line 54
    const-class v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 1

    .line 54
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->$VALUES:[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-object v0
.end method


# virtual methods
.method public getContainerUri()Landroid/net/Uri;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sonymobile.music.smartplaylist/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultArtResourceId()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mDefaultArtResourceId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaBaseID()I
    .locals 8

    .line 160
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6a6895a9

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_4

    const v4, -0x3d7ec292

    if-eq v3, v4, :cond_3

    const v1, 0x1e7f51ca

    if-eq v3, v1, :cond_2

    const v1, 0x64acf30f

    if-eq v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "most_played"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "recently_played"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v3, "newly_added"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_4
    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v5, 0x4

    goto :goto_2

    :pswitch_1
    const/4 v5, 0x2

    goto :goto_2

    :pswitch_2
    const/4 v5, 0x1

    :goto_2
    :pswitch_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getMediaPlaybackConstant()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mMediaPlaybackConstant:I

    return v0
.end method

.method public getMediaProviderName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mMediaProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameResourceId()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mNameResourceId:I

    return v0
.end method

.method public getProviderTypeId()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->mProviderType:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v0

    return v0
.end method
